// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../game/vector.hh"
#include "../net/packet.hh"
#include "../serde/serde.hh"
#include <cstdint>

namespace luna::netcode {

struct RequestClass final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 128);

    inline net::Packet* create() const override {
        return new RequestClass();
    }

    void serialise(serde::ISerialiser& serialiser) const override;

    int classID;
};

struct RequestClassResponse final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 128);

    inline net::Packet* create() const override {
        return new RequestClassResponse();
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
    bool execute(net::Client& client) override;

    uint8_t selectable;
    uint8_t teamID;
    uint32_t modelID;
    game::Vector spawn;
    float zAngle;
    uint32_t weapons[3];
    uint32_t ammos[3];
};

struct RequestSpawn final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 129);

    inline net::Packet* create() const override {
        return new RequestSpawn();
    }

    void serialise(serde::ISerialiser& serialiser) const override;
};

class RequestSpawnResponse final : public net::Packet {
public:
    LUNA_DEFINE_PACKET(true, 129);

    inline net::Packet* create() const override {
        return new RequestSpawnResponse();
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
    bool execute(net::Client& client) override;

private:
    void onSpawn(net::Client& client);
    void onSpawnFail(net::Client& client);

    int allow;
};

struct SendSpawn final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 52);

    inline net::Packet* create() const override {
        return new SendSpawn();
    }

    void serialise(serde::ISerialiser& serialiser) const override;
};

} // namespace luna::netcode
