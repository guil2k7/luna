// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../game/vector.hh"
#include "../net/packet.hh"
#include "../serde/serde.hh"
#include <cstdint>

namespace luna::netcode {

struct RequestClass final : public serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 128)

    void serialise(serde::ISerialiser& serialiser) const {
        serialiser.serialiseU16(id);
    }

    int id;
};

struct RequestClassResponse final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 128)

    void deserialise(serde::IDeserialiser& deserialiser) {
        selectable = deserialiser.deserialiseU8();
        teamID = deserialiser.deserialiseU8();
        modelID = deserialiser.deserialiseU32();
        deserialiser.deserialise(spawn);

        // Unknown.
        deserialiser.deserialiseU8();

        zAngle = deserialiser.deserialiseF32();

        for (size_t i = 0; i < 3; ++i)
            weapons[i] = deserialiser.deserialiseU32();

        for (size_t i = 0; i < 3; ++i)
            ammos[i] = deserialiser.deserialiseU32();
    }

    uint8_t selectable;
    uint8_t teamID;
    uint32_t modelID;
    game::Vector spawn;
    float zAngle;
    uint32_t weapons[3];
    uint32_t ammos[3];
};

struct RequestSpawn final : public serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 129)

    void serialise(serde::ISerialiser& serialiser) const { }
};

struct RequestSpawnResponse final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 129)

    void deserialise(serde::IDeserialiser& deserialiser) {
        allow = deserialiser.deserialiseU8();
    }

    int allow;
};

struct SendSpawn final : public serde::ISerialisable {
    LUNA_DEFINE_PACKET(true, 52)

    void serialise(serde::ISerialiser& serialiser) const { }
};

} // namespace luna::netcode
