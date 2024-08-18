// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Packet.hh"
#include "../../Serde/Serde.hh"
#include <RakNet/NetworkTypes.h>
#include <string_view>
#include <cstdint>

namespace Luna::Network::Code {

struct CConnectionRequestAccepted final : public Serde::IDeserialisable {
    LUNA_DEFINE_PACKET(false, 34)

    void Deserialise(Serde::IDeserialiser& deserialiser) override;

    RakNet::PlayerIndex PlayerIndex;
    uint32_t SampToken;
};

struct CClientLogin final : public Serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 25)

    void Serialise(Serde::ISerialiser& serialiser) const override;

    uint32_t ClientVersion;
    uint8_t Modded;
    std::string_view Nickname;
    uint32_t ClientChallengeResponse;
    std::string_view Auth;
    std::string_view ClientVersionString;
};

} // namespace Luna::Network::Code

#include "Core.inl"
