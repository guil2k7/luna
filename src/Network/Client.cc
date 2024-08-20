// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Network/Client.hh>
#include <Luna/Network/Code/Core.hh>
#include <Luna/Serde/BitSerde.hh>
#include <RakNet/BitStream.h>
#include <RakNet/MTUSize.h>
#include <RakNet/PacketEnumerations.h>
#include <RakNet/RakNetworkFactory.h>
#include <spdlog/spdlog.h>
#include <malloc.h>

using namespace Luna;
using namespace Luna::Network;
using namespace Luna::Serde;

#define CLIENT_VERSION_LEGACY_037   4057
#define CLIENT_VERSION_LEGACY_03DL  4062

static inline CBitDeserialiser CreateDeserialiserFromPacket(RakNet::Packet const* packet) {
    return CBitDeserialiser(packet->data + 1, packet->bitSize - 8);
}

CClient::CClient() {
    static_assert(sizeof (RakNet::RPCID) == 1);

    m_RakPeer = RakNet::RakNetworkFactory::GetRakPeerInterface();
    m_State = CLIENT_STATE_DISCONNECTED;

    m_RpcHandlers = new CRpcHandler[256];
    m_PacketHandlers = new CPacketHandler[256 - RakNet::ID_USER_PACKET_ENUM];
}

CClient::~CClient() {
    RakNet::RakNetworkFactory::DestroyRakPeerInterface(m_RakPeer);

    delete[] m_RpcHandlers;
    delete[] m_RpcHandlers;
}

bool CClient::SetConnectionParams(CConnectionParams const& params) {
    if (m_State != CLIENT_STATE_DISCONNECTED)
        return false;

    m_ConnectionParams = params;

    return true;
}

void CClient::Connect() {
    m_RakPeer->Disconnect(100);
    m_RakPeer->Initialize(1, 0, 30);
    m_RakPeer->Connect(m_ConnectionParams.Host.data(), m_ConnectionParams.Port, nullptr, 0);

    m_ServerAddr = m_RakPeer->GetServerID();
    m_State = CLIENT_STATE_CONNECTING;
}

void CClient::Update() {
    if (m_State == CLIENT_STATE_DISCONNECTED)
        return;

    RakNet::Packet* packet = m_RakPeer->Receive();

    while (packet != nullptr) {
        try {
            ProcessPacket(packet);
        }
        catch (std::exception& exception) {
            spdlog::info("An exception occurred while processing a packet (ID: {}): {}", packet->data[0], exception.what());
        }

        m_RakPeer->DeallocatePacket(packet);
        packet = m_RakPeer->Receive();
    }
}

bool CClient::SendPacket(PacketID id, ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    uint8_t buffer[MAXIMUM_MTU_SIZE];

    Serde::CBitSerialiser serialiser(&buffer[0], MAXIMUM_MTU_SIZE);

    try {
        serialiser.SerialiseU8(id);
        serialiser.Serialise(data);
    }
    catch (CSerdeException& exception) {
        spdlog::info("{}", exception.what());
    }

    return m_RakPeer->Send(
        reinterpret_cast<char const*>(buffer),
        serialiser.OffsetInBytes(),
        priority, reliability,
        0, m_ServerAddr, false
    );
}

bool CClient::SendRPC(PacketID id, ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    uint8_t buffer[MAXIMUM_MTU_SIZE];

    CBitSerialiser serialiser(&buffer[0], MAXIMUM_MTU_SIZE);

    try {
        serialiser.Serialise(data);
    }
    catch (CSerdeException& exception) {
        spdlog::info("{}", exception.what());
    }

    return m_RakPeer->RPC(
        id,
        reinterpret_cast<char const*>(buffer),
        serialiser.OffsetInBits(),
        priority, reliability,
        0, m_ServerAddr, false, false
    );
}

bool CClient::RegisterHandlerForPacket(PacketID id, CPacketHandler handler) {
    if (id < RakNet::ID_USER_PACKET_ENUM)
        return false;

    id -= RakNet::ID_USER_PACKET_ENUM;

    if (m_PacketHandlers[id].Callback != nullptr)
        return false;

    m_PacketHandlers[id] = handler;

    return true;
}

bool CClient::RegisterHandlerForRPC(RakNet::RPCID id, CRpcHandler handler) {
    if (m_RpcHandlers[id].Callback != nullptr)
        return false;

    m_RpcHandlers[id] = handler;

    return true;
}

inline CPacketHandler* CClient::GetPacketHandler(PacketID packetID) {
    size_t index = packetID - RakNet::ID_USER_PACKET_ENUM;

    if (m_PacketHandlers[index].Callback == nullptr)
        return nullptr;

    return &m_PacketHandlers[index];
}

inline CRpcHandler* CClient::GetRpcHandler(RakNet::RPCID rpcID) {
    if (m_RpcHandlers[rpcID].Callback == nullptr)
        return nullptr;

    return &m_RpcHandlers[rpcID];
}

void CClient::RetryConnect() {
    m_RakPeer->Connect(m_ConnectionParams.Host.data(), m_ConnectionParams.Port, nullptr, 0);
    m_State = CLIENT_STATE_RETRYING;
}

void CClient::ProcessPacket(RakNet::Packet const* packet) {
    if (packet->data[0] == RakNet::ID_RPC) {
        ProcessRPC(packet);
        return;
    }

    if (packet->data[0] >= RakNet::ID_USER_PACKET_ENUM) {
        ProcessUserPacket(packet);
        return;
    }

    switch (packet->data[0]) {
    case RakNet::ID_CONNECTION_REQUEST_ACCEPTED:
        ProcessConnectionRequestAccepted(packet);
        break;

    case RakNet::ID_CONNECTION_ATTEMPT_FAILED:
        spdlog::info("Connection attempt failed. Retrying...");
        RetryConnect();
        break;

    case RakNet::ID_CONNECTION_LOST:
    case RakNet::ID_DISCONNECTION_NOTIFICATION:
        m_State = CLIENT_STATE_DISCONNECTED;
        break;
    }
}

void CClient::ProcessConnectionRequestAccepted(RakNet::Packet const* packet) {
    auto deserialiser = CreateDeserialiserFromPacket(packet);

    Code::CConnectionRequestAccepted data;
    deserialiser.Deserialise(data);

    Code::CClientLogin response;
    response.ClientVersion = CLIENT_VERSION_LEGACY_037;
    response.Modded = 1;
    response.Nickname = m_ConnectionParams.Nickname;
    response.ClientChallengeResponse = data.SampToken ^ CLIENT_VERSION_LEGACY_037;
    response.Auth = "15121F6F18550C00AC4B4F8A167D0379BB0ACA99043";
    response.ClientVersionString = "0.3.7";

    Send(response, RakNet::HIGH_PRIORITY, RakNet::RELIABLE);

    m_State = CLIENT_STATE_CONNECTED;
    m_OurID = data.PlayerIndex;
}

void CClient::ProcessUserPacket(RakNet::Packet const* packet) {
    PacketID packetID = packet->data[0];
    CPacketHandler* handler = GetPacketHandler(packetID);

    if (handler != nullptr) {
        try {
            handler->Callback(handler->UserData, *this, packet->data + 1, packet->bitSize - 8);
        }
        catch (std::exception& exception) {
            spdlog::info("An exception occurred while processing a user packet ({}): {}", packetID, exception.what());
        }
    }
    else {
        spdlog::info("No packet handler found for ID: {}.", packetID);
    }
}

void CClient::ProcessRPC(RakNet::Packet const* packet) {
    RakNet::BitStream bitStream(packet->data, BitsToBytes(packet->bitSize), false);

    RakNet::RPCID rpcID;
    uint32_t dataSizeInBits;
    uint8_t* data;

    bitStream.IgnoreBits(8);
    bitStream.Read<RakNet::RPCID>(rpcID);
    bitStream.ReadCompressed<uint32_t>(dataSizeInBits);

    #if 0
    if (dataSizeInBits > 8192) {
        spdlog::info("RPC ({}) data size is very large: {} bits.", rpcID, dataSizeInBits);
        return;
    }
    #endif

    if (bitStream.GetReadOffset() % 8 == 0) {
        data = packet->data + BitsToBytes(bitStream.GetReadOffset());
    }
    else {
        // We have to copy into a new data chunk because
        // the user data is not byte aligned.
        data = reinterpret_cast<uint8_t*>(alloca(BitsToBytes(dataSizeInBits)));
        bitStream.ReadBits(data, dataSizeInBits, false);
    }

    CRpcHandler* handler = GetRpcHandler(rpcID);

    if (handler != nullptr) {
        spdlog::info("Processing RPC ID: {} ...", rpcID);

        try {
            handler->Callback(handler->UserData, *this, data, dataSizeInBits);
        }
        catch (std::exception& exception) {
            spdlog::info("An exception occurred while processing a RPC ({}): {}", rpcID, exception.what());
        }
    }
    else {
        spdlog::info("No RPC handler found for ID: {}.", rpcID);
    }
}
