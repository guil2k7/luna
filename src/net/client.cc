// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/net/client.hh>
#include <luna/serde/bitSerde.hh>
#include <malloc.h>
#include <RakNet/BitStream.h>
#include <RakNet/MTUSize.h>
#include <RakNet/PacketEnumerations.h>
#include <RakNet/RakNetworkFactory.h>
#include <spdlog/spdlog.h>

using namespace luna;
using namespace luna::net;
using namespace luna::serde;

#define CLIENT_VERSION_LEGACY_037 4057
#define CLIENT_VERSION_LEGACY_03DL 4062

struct ClientLogin final : public Packet {
    LUNA_DEFINE_PACKET(true, 25);

    Packet* create() const override {
        return new ClientLogin();
    }

    void serialise(ISerialiser& serialiser) const override {
        serialiser.serialiseU32(clientVersion);
        serialiser.serialiseU8(modded);
        serialiser.serialiseU8(nickname.length());
        serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(nickname.data()), nickname.length());
        serialiser.serialiseU32(clientChallengeResponse);
        serialiser.serialiseU8(auth.length());
        serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(auth.data()), auth.length());
        serialiser.serialiseU8(clientVersionString.length());
        serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(clientVersionString.data()), clientVersionString.length());

        // Official clients send the challenge again at the end, while other clients do not.
        serialiser.serialiseU32(clientChallengeResponse);
    }

    bool execute(Client& client) override {
        return false;
    }

    uint32_t clientVersion;
    uint8_t modded;
    std::string_view nickname;
    uint32_t clientChallengeResponse;
    std::string_view auth;
    std::string_view clientVersionString;
};

struct ConnectionRequestAccepted final : public Packet {
    LUNA_DEFINE_PACKET(false, 34);

    inline Packet* create() const override {
        return new ConnectionRequestAccepted();
    }

    void deserialise(IDeserialiser& deserialiser) override {
        deserialiser.skipBytes(6);

        playerIndex = deserialiser.deserialiseU16();
        sampToken = deserialiser.deserialiseU32();
    }

    RakNet::PlayerIndex playerIndex;
    uint32_t sampToken;
};

inline static BitDeserialiser createDeserialiserFromPacket(RakNet::Packet const* packet) {
    return BitDeserialiser(packet->data + 1, packet->bitSize - 8);
}

static int RakNetGetPacketID(RakNet::Packet const* packet) {
    if (packet->data[0] == RakNet::ID_TIMESTAMP)
        return packet->data[1 + 4];

    return packet->data[0];
}

Client::Client() {
    static_assert(sizeof(RakNet::RPCID) == 1);

    m_rakPeer = RakNet::RakNetworkFactory::GetRakPeerInterface();
    m_state = CLIENT_STATE_DISCONNECTED;

    m_packets = new Packet*[256];
    m_rpcs = new Packet*[256];
}

Client::~Client() {
    RakNet::RakNetworkFactory::DestroyRakPeerInterface(m_rakPeer);

    // Should I delete the packet instances?

    delete[] m_packets;
    delete[] m_rpcs;
}

bool Client::setConnectionParams(ConnectionParams const& params) {
    if (m_state != CLIENT_STATE_DISCONNECTED)
        return false;

    m_connectionParams = params;

    return true;
}

void Client::connect() {
    m_rakPeer->Disconnect(100);
    m_rakPeer->Initialize(1, 0, 30);
    m_rakPeer->Connect(m_connectionParams.host.data(), m_connectionParams.port, nullptr, 0);

    m_serverAddr = m_rakPeer->GetServerID();
    m_state = CLIENT_STATE_CONNECTING;
}

void Client::update() {
    if (m_state == CLIENT_STATE_DISCONNECTED)
        return;

    RakNet::Packet* packet = m_rakPeer->Receive();

    while (packet != nullptr) {
        processPacket(packet);

        m_rakPeer->DeallocatePacket(packet);
        packet = m_rakPeer->Receive();
    }
}

bool Client::sendPacket(PacketID id, ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    uint8_t buffer[MAXIMUM_MTU_SIZE];

    BitSerialiser serialiser(&buffer[0], MAXIMUM_MTU_SIZE);
    serialiser.serialiseU8(id);
    serialiser.serialise(data);

    return m_rakPeer->Send(
        reinterpret_cast<char const*>(buffer),
        serialiser.offsetInBytes(),
        priority, reliability,
        0, m_serverAddr, false
    );
}

bool Client::sendRPC(PacketID id, ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    uint8_t buffer[MAXIMUM_MTU_SIZE];

    BitSerialiser serialiser(&buffer[0], MAXIMUM_MTU_SIZE);
    serialiser.serialise(data);

    return m_rakPeer->RPC(
        id,
        reinterpret_cast<char const*>(buffer),
        serialiser.offsetInBits(),
        priority, reliability,
        0, m_serverAddr, false, false
    );
}

bool Client::registerHandlerForPacket(bool isRPC, PacketID id, Packet* packet) {
    if (isRPC) {
        if (id < RakNet::ID_USER_PACKET_ENUM)
            return false;

        if (m_packets[id] != nullptr)
            return false;

        m_packets[id] = packet;
    } else {
        if (m_rpcs[id] != nullptr)
            return false;

        m_rpcs[id] = packet;
    }

    return true;
}

void Client::retryConnect() {
    m_rakPeer->Connect(m_connectionParams.host.data(), m_connectionParams.port, nullptr, 0);
    m_state = CLIENT_STATE_RETRYING;
}

void Client::processPacket(RakNet::Packet const* packet) {
    int packetID = RakNetGetPacketID(packet);

    if (packetID == RakNet::ID_RPC) {
        processRPC(packet);
        return;
    }

    if (packetID >= RakNet::ID_USER_PACKET_ENUM) {
        processUserPacket(packet);
        return;
    }

    switch (packetID) {
    case RakNet::ID_CONNECTION_REQUEST_ACCEPTED:
        processConnectionRequestAccepted(packet);
        break;

    case RakNet::ID_CONNECTION_ATTEMPT_FAILED:
        retryConnect();
        break;

    case RakNet::ID_CONNECTION_LOST:
    case RakNet::ID_DISCONNECTION_NOTIFICATION:
        m_state = CLIENT_STATE_DISCONNECTED;
        break;

    default:
        spdlog::info("No packet handler found for ID: {}.", packetID);
        break;
    }
}

void Client::processConnectionRequestAccepted(RakNet::Packet const* packet) {
    auto deserialiser = createDeserialiserFromPacket(packet);

    ConnectionRequestAccepted data;
    deserialiser.deserialise(data);

    ClientLogin response;
    response.clientVersion = CLIENT_VERSION_LEGACY_037;
    response.modded = 1;
    response.nickname = m_connectionParams.nickname;
    response.clientChallengeResponse = data.sampToken ^ CLIENT_VERSION_LEGACY_037;
    response.auth = "15121F6F18550C00AC4B4F8A167D0379BB0ACA99043";
    response.clientVersionString = "0.3.7";

    send(response, RakNet::HIGH_PRIORITY, RakNet::RELIABLE);

    m_state = CLIENT_STATE_CONNECTED;
    m_ourID = data.playerIndex;
}

void Client::processUserPacket(RakNet::Packet const* rakPacket) {
    PacketID packetID;

    uint32_t dataSizeInBits;
    uint8_t const* data;

    if (rakPacket->data[0] == RakNet::ID_TIMESTAMP) {
        packetID = rakPacket->data[1 + 4];

        data = &rakPacket->data[1 + 4 + 1];
        dataSizeInBits = rakPacket->bitSize - 8 - 32 - 8;
    } else {
        packetID = rakPacket->data[0];

        data = &rakPacket->data[1];
        dataSizeInBits = rakPacket->bitSize - 8;
    }

    Packet* packet = m_packets[packetID];

    if (packet == nullptr) {
        spdlog::info("No user packet handler found for ID: {}.", packetID);
        return;
    } 

    BitDeserialiser deserialiser(data, dataSizeInBits);

    packet->deserialise(deserialiser);

    if (packet->execute(*this)) {
        packet = packet->create();
        m_packets[packetID] = packet;
    }
}

void Client::processRPC(RakNet::Packet const* rakPacket) {
    BitDeserialiser deserialiser(rakPacket->data, rakPacket->bitSize);

    RakNet::RPCID rpcID;
    uint32_t dataSizeInBits;
    uint8_t* data;

    if (rakPacket->data[0] == RakNet::ID_TIMESTAMP)
        deserialiser.skipBytes(1 + 4 + 1);
    else
        deserialiser.skipBytes(1);

    rpcID = deserialiser.deserialiseU8();

    Packet* packet = m_rpcs[rpcID];

    if (packet == nullptr) {
        spdlog::info("No RPC handler found for ID: {}.", rpcID);
        return;
    }

    deserialiser.deserialiseBytesCompressed(
        reinterpret_cast<uint8_t*>(&dataSizeInBits),
        sizeof (dataSizeInBits)
    );

    #if 0
    if (dataSizeInBits > 8192) {
        spdlog::info("RPC {} data size is very large: {} bits.", rpcID, dataSizeInBits);
        return;
    }
    #endif

    if (deserialiser.offsetInBits() % 8 == 0) {
        data = rakPacket->data + deserialiser.offsetInBytes();
    } else {
        // We have to copy into a new data chunk because the user data is not byte aligned.
        data = reinterpret_cast<uint8_t*>(alloca(bitsToBytes(dataSizeInBits)));
        deserialiser.deserialiseBits(data, dataSizeInBits, false);
    }

    packet->deserialise(deserialiser);

    if (packet->execute(*this)) {
        packet = packet->create();
        m_rpcs[rpcID] = packet;
    }
}
