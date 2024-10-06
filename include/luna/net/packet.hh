// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../core/exceptions.hh"
#include "../serde/serde.hh"
#include <cstdint>

namespace luna::net {

class Client;

typedef uint8_t PacketID;

class Packet : public serde::ISerialisable, public serde::IDeserialisable {
public:
    virtual ~Packet() {}

    virtual Packet* create() const = 0;

    virtual void serialise(serde::ISerialiser& serialiser) const {
        throw core::NotImplemented();
    }

    virtual void deserialise(serde::IDeserialiser& deserialiser) {
        throw core::NotImplemented();
    }

    /// Returns true to take the own of this packet.
    virtual bool execute(Client& client) {
        throw core::NotImplemented();
    }
};

#define LUNA_DEFINE_PACKET(isRPC, id)            \
    static constexpr bool PACKET_IS_RPC = isRPC; \
    static constexpr luna::net::PacketID PACKET_ID = id

template <typename T>
inline constexpr bool isRPC() {
    return T::PACKET_IS_RPC;
}

template <typename T>
inline constexpr PacketID packetID() {
    return T::PACKET_ID;
}

} // namespace luna::net
