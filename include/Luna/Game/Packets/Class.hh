// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../SerdeImpls.hh"
#include "../../GameSA/Vector.hh"
#include "../../Net/Packet.hh"
#include <cstdint>

namespace Luna::Game::Packets {

struct CRequestClass final : public Serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 128)

    void Serialise(Serde::ISerialiser& serialiser) const {
        serialiser.SerialiseU16(ID);
    }

    int ID;
};

struct CRequestClassResponse final : public Serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 128)

    void Deserialise(Serde::IDeserialiser& deserialiser) {
        Selectable = deserialiser.DeserialiseU8();
        TeamID = deserialiser.DeserialiseU8();
        ModelID = deserialiser.DeserialiseU32();
        deserialiser.Deserialise(Spawn);

        // Unknown.
        deserialiser.DeserialiseU8();

        ZAngle = deserialiser.DeserialiseF32();

        for (size_t i = 0; i < 3; ++i)
            Weapons[i] = deserialiser.DeserialiseU32();

        for (size_t i = 0; i < 3; ++i)
            Ammos[i] = deserialiser.DeserialiseU32();
    }

    uint8_t Selectable;
    uint8_t TeamID;
    uint32_t ModelID;
    GameSA::CVector Spawn;
    float ZAngle;
    uint32_t Weapons[3];
    uint32_t Ammos[3];
};

struct CRequestSpawn final : public Serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 129)

    void Serialise(Serde::ISerialiser& serialiser) const {}
};

struct CRequestSpawnResponse final : public Serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 129)

    void Deserialise(Serde::IDeserialiser& deserialiser) {
        Allow = deserialiser.DeserialiseU8();
    }

    int Allow;
};

struct CSendSpawn final : public Serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 52)

    void Serialise(Serde::ISerialiser& serialiser) const {}
};

}
