// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../SerdeImpls.hh"
#include "../../Net/Packet.hh"
#include "../../Engine/Game/Vector.hh"
#include <cstdint>

namespace Luna::NetGame::Packets {

struct CRemoveBuilding final : public Serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 43)

    void Deserialise(Serde::IDeserialiser& deserialiser);

    uint32_t ObjectModel;
    Engine::Game::CVector Position;
    float Radius;
};

inline void CRemoveBuilding::Deserialise(Serde::IDeserialiser& deserialiser) {
    ObjectModel = deserialiser.DeserialiseU32();
    deserialiser.Deserialise(Position);
    Radius = deserialiser.DeserialiseF32();
}

}
