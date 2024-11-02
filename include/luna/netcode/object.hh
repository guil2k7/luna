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

struct RemoveBuilding final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 43)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint32_t objectModel;
    game::Vector position;
    float radius;
};

inline void RemoveBuilding::deserialise(serde::IDeserialiser& deserialiser) {
    objectModel = deserialiser.deserialiseU32();
    deserialiser.deserialise(position);
    radius = deserialiser.deserialiseF32();
}

} // namespace luna::netcode
