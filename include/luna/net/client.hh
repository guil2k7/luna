// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "packet.hh"
#include "../serde/serde.hh"
#include <string>
#include <RakNet/RakPeerInterface.h>

namespace luna::net {

class Client;

enum ClientState {
    CLIENT_STATE_UNDEFINED,
    CLIENT_STATE_DISCONNECTED,
    CLIENT_STATE_CONNECTED,
    CLIENT_STATE_CONNECTING,
    CLIENT_STATE_RETRYING,
};

struct ConnectionParams {
    std::string nickname;
    std::string host;
    int port;
};

class Client {
public:
    Client();
    ~Client();

    bool setConnectionParams(ConnectionParams const& params);
    void connect();
    void update();

    bool sendPacket(PacketID id, serde::ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability);
    bool sendRPC(PacketID id, serde::ISerialisable const& data, RakNet::PacketPriority priority, RakNet::PacketReliability reliability);

    template <typename T>
    bool send(T const& packet, RakNet::PacketPriority priority, RakNet::PacketReliability reliability);

    template<typename T>
    inline bool registerHandlerForPacket(T* packet) {
        return registerHandlerForPacket(isRPC<T>(), packetID<T>(), packet);
    }

    inline ClientState state() const {
        return m_state;
    }

    inline uint16_t ourID() const {
        return m_ourID;
    }

private:
    bool registerHandlerForPacket(bool isRPC, PacketID id, Packet* packet);

    void retryConnect();
    void processPacket(RakNet::Packet const* packet);
    void processConnectionRequestAccepted(RakNet::Packet const* packet);
    void processUserPacket(RakNet::Packet const* packet);
    void processRPC(RakNet::Packet const* packet);

    RakNet::RakPeerInterface* m_rakPeer;
    RakNet::PlayerID m_serverAddr;
    ClientState m_state;
    ConnectionParams m_connectionParams;
    uint16_t m_ourID;

    Packet** m_packets;
    Packet** m_rpcs;
};

template <typename T>
inline bool Client::send(T const& packet, RakNet::PacketPriority priority, RakNet::PacketReliability reliability) {
    if constexpr (isRPC<T>()) {
        return sendRPC(packetID<T>(), packet, priority, reliability);
    } else {
        return sendPacket(packetID<T>(), packet, priority, reliability);
    }
}

} // namespace luna::net
