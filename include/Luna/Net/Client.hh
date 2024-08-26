// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Packet.hh"
#include "../Serde/Serde.hh"
#include <RakNet/RakPeerInterface.h>
#include <string>

namespace Luna::Net {

class CClient;

enum eClientState {
    CLIENT_STATE_UNDEFINED,
    CLIENT_STATE_DISCONNECTED,
    CLIENT_STATE_CONNECTED,
    CLIENT_STATE_CONNECTING,
    CLIENT_STATE_RETRYING,
};

struct CConnectionParams {
    std::string Nickname;
    std::string Host;
    int Port;
};

typedef void (*PacketHandlerCallback)(void* userData, CClient& client, uint8_t const* data, size_t bitSize);
typedef void (*RpcHandlerCallback)(void* userData, CClient& client, uint8_t const* data, size_t bitSize);

struct CPacketHandler {
    PacketHandlerCallback Callback = nullptr;
    void* UserData = nullptr;
};

struct CRpcHandler {
    RpcHandlerCallback Callback = nullptr;
    void* UserData = nullptr;
};

class CClient {
public:
    CClient();
    ~CClient();

    bool SetConnectionParams(CConnectionParams const& params);
    void Connect();
    void Update();

    bool SendPacket(PacketID id, Serde::ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability);
    bool SendRPC(PacketID id, Serde::ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability);

    template<typename T>
    bool Send(T const& packet, RakNet::PacketPriority priority, RakNet::PacketReliability reliability);

    bool RegisterHandlerForPacket(PacketID id, CPacketHandler handler);
    bool RegisterHandlerForRPC(RakNet::RPCID id, CRpcHandler handler);

    inline eClientState GetState() const {
        return m_State;
    }

    inline uint16_t GetOurID() const {
        return m_OurID;
    }

private:
    CPacketHandler* GetPacketHandler(PacketID packetID);
    CRpcHandler* GetRpcHandler(RakNet::RPCID rpcID);

    void RetryConnect();
    void ProcessPacket(RakNet::Packet const* packet);
    void ProcessConnectionRequestAccepted(RakNet::Packet const* packet);
    void ProcessUserPacket(RakNet::Packet const* packet);
    void ProcessRPC(RakNet::Packet const* packet);

    RakNet::RakPeerInterface* m_RakPeer;
    RakNet::PlayerID m_ServerAddr;
    eClientState m_State;
    CConnectionParams m_ConnectionParams;
    uint16_t m_OurID;
    CPacketHandler* m_PacketHandlers;
    CRpcHandler* m_RpcHandlers;
};

template<typename T>
inline bool CClient::Send(T const& packet, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    if constexpr (IsRPC<T>()) {
        return SendRPC(GetPacketID<T>(), packet, priority, reliability);
    }
    else {
        return SendPacket(GetPacketID<T>(), packet, priority, reliability);
    }
}

} // namespace Luna::Net
