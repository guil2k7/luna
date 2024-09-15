// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstdint>

namespace luna::net {

typedef uint8_t PacketID;

#define LUNA_DEFINE_PACKET(isRPC, id)            \
    static constexpr bool PACKET_IS_RPC = isRPC; \
    static constexpr luna::net::PacketID PACKET_ID = id;

template <typename T>
inline constexpr bool isRPC() {
    return T::PACKET_IS_RPC;
}

template <typename T>
inline constexpr PacketID packetID() {
    return T::PACKET_ID;
}

} // namespace luna::net
