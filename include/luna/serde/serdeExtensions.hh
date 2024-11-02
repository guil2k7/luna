// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "serde.hh"
#include "../game/quaternion.hh"
#include "../game/vector.hh"

namespace luna::serde {

template <>
inline void serialise(ISerialiser& serialiser, game::Vector const& vec) {
    serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(&vec), sizeof(vec));
}

template <>
inline void deserialise(IDeserialiser& deserialiser, game::Vector& vec) {
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(&vec), sizeof(vec));
}

template <>
inline void serialise(ISerialiser& serialiser, game::Quaternion const& quat) {
    serialiser.serialiseBytes(reinterpret_cast<uint8_t const*>(&quat), sizeof(quat));
}

template <>
inline void deserialise(IDeserialiser& deserialiser, game::Quaternion& quat) {
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(&quat), sizeof(quat));
}

} // namespace luna::serde
