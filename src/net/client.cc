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

struct ClientLogin final : public serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 25)

    void serialise(serde::ISerialiser& serialiser) const {
        serialiser.serialiseU32(clientVersion);
        serialiser.serialiseU8(modded);
        serialiser.serialiseU8(nickname.length());
        serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(nickname.data()), nickname.length());
        serialiser.serialiseU32(clientChallengeResponse);
        serialiser.serialiseU8(auth.length());
        serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(auth.data()), auth.length());
        serialiser.serialiseU8(clientVersionString.length());
        serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(clientVersionString.data()), clientVersionString.length());

        // Official clients send the challenge again at the end,
        // while other clients do not.
        serialiser.serialiseU32(clientChallengeResponse);
    }

    uint32_t clientVersion;
    uint8_t modded;
    std::string_view nickname;
    uint32_t clientChallengeResponse;
    std::string_view auth;
    std::string_view clientVersionString;
};

struct CConnectionRequestAccepted final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(false, 34)

    void deserialise(serde::IDeserialiser& deserialiser) {
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

static int RakNetSkipPacketID(RakNet::BitStream& bitStream) {
    uint8_t packetID;
    bitStream.Read<uint8_t>(packetID);

    if (packetID == RakNet::ID_TIMESTAMP) {
        bitStream.IgnoreBits(sizeof(RakNet::RakNetTime) * 8);
        bitStream.Read<uint8_t>(packetID);
    }

    return packetID;
}

Client::Client() {
    static_assert(sizeof(RakNet::RPCID) == 1);

    m_rakPeer = RakNet::RakNetworkFactory::GetRakPeerInterface();
    m_state = CLIENT_STATE_DISCONNECTED;

    m_rpcHandlers = new RpcHandler[256];
    m_packetHandlers = new PacketHandler[256 - RakNet::ID_USER_PACKET_ENUM];
}

Client::~Client() {
    RakNet::RakNetworkFactory::DestroyRakPeerInterface(m_rakPeer);

    delete[] m_packetHandlers;
    delete[] m_rpcHandlers;
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
        try {
            processPacket(packet);
        } catch (std::exception& exception) {
            spdlog::info("An exception occurred while processing the packet {}: {}", packet->data[0], exception.what());
        }

        m_rakPeer->DeallocatePacket(packet);
        packet = m_rakPeer->Receive();
    }
}

bool Client::sendPacket(PacketID id, ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    uint8_t buffer[MAXIMUM_MTU_SIZE];

    serde::BitSerialiser serialiser(&buffer[0], MAXIMUM_MTU_SIZE);

    try {
        serialiser.serialiseU8(id);
        serialiser.serialise(data);
    } catch (SerdeException& exception) {
        spdlog::info("An exception occurred while sending the packet {}: {}", id, exception.what());
    }

    return m_rakPeer->Send(
        reinterpret_cast<char const*>(buffer),
        serialiser.offsetInBytes(),
        priority, reliability,
        0, m_serverAddr, false);
}

bool Client::sendRPC(PacketID id, ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    uint8_t buffer[MAXIMUM_MTU_SIZE];

    BitSerialiser serialiser(&buffer[0], MAXIMUM_MTU_SIZE);

    try {
        serialiser.serialise(data);
    } catch (SerdeException& exception) {
        spdlog::info("An exception occurred while sending the RPC {}: {}", id, exception.what());
    }

    return m_rakPeer->RPC(
        id,
        reinterpret_cast<char const*>(buffer),
        serialiser.offsetInBits(),
        priority, reliability,
        0, m_serverAddr, false, false);
}

bool Client::registerHandlerForPacket(PacketID id, PacketHandler handler) {
    if (id < RakNet::ID_USER_PACKET_ENUM)
        return false;

    id -= RakNet::ID_USER_PACKET_ENUM;

    if (m_packetHandlers[id].callback != nullptr)
        return false;

    m_packetHandlers[id] = handler;

    return true;
}

bool Client::registerHandlerForRPC(RakNet::RPCID id, RpcHandler handler) {
    if (m_rpcHandlers[id].callback != nullptr)
        return false;

    m_rpcHandlers[id] = handler;

    return true;
}

inline PacketHandler* Client::getPacketHandler(PacketID packetID) {
    size_t index = packetID - RakNet::ID_USER_PACKET_ENUM;

    if (m_packetHandlers[index].callback == nullptr)
        return nullptr;

    return &m_packetHandlers[index];
}

inline RpcHandler* Client::getRpcHandler(RakNet::RPCID rpcID) {
    if (m_rpcHandlers[rpcID].callback == nullptr)
        return nullptr;

    return &m_rpcHandlers[rpcID];
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

    CConnectionRequestAccepted data;
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

void Client::processUserPacket(RakNet::Packet const* packet) {
    PacketID packetID = packet->data[0];
    PacketHandler* handler = getPacketHandler(packetID);

    if (handler != nullptr) {
        try {
            handler->callback(handler->userData, *this, packet->data + 1, packet->bitSize - 8);
        } catch (std::exception& exception) {
            spdlog::info("An exception occurred while processing the user packet {}: {}", packetID, exception.what());
        }
    } else {
        spdlog::info("No user packet handler found for ID: {}.", packetID);
    }
}

void Client::processRPC(RakNet::Packet const* packet) {
    RakNet::BitStream bitStream(packet->data, bitsToBytes(packet->bitSize), false);

    RakNet::RPCID rpcID;
    uint32_t dataSizeInBits;
    uint8_t* data;

    bitStream.IgnoreBits(8);
    bitStream.Read<RakNet::RPCID>(rpcID);
    bitStream.ReadCompressed<uint32_t>(dataSizeInBits);

#if 0
    if (dataSizeInBits > 8192) {
        spdlog::info("RPC {} data size is very large: {} bits.", rpcID, dataSizeInBits);
        return;
    }
#endif

    if (bitStream.GetReadOffset() % 8 == 0) {
        data = packet->data + bitsToBytes(bitStream.GetReadOffset());
    } else {
        // We have to copy into a new data chunk because
        // the user data is not byte aligned.
        data = reinterpret_cast<uint8_t*>(alloca(bitsToBytes(dataSizeInBits)));
        bitStream.ReadBits(data, dataSizeInBits, false);
    }

    RpcHandler* handler = getRpcHandler(rpcID);

    if (handler != nullptr) {
        try {
            handler->callback(handler->userData, *this, data, dataSizeInBits);
        } catch (std::exception& exception) {
            spdlog::info("An exception occurred while processing the RPC {}: {}", rpcID, exception.what());
        }
    } else {
        spdlog::info("No RPC handler found for ID: {}.", rpcID);
    }
}
