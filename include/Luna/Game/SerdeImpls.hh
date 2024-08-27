// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../GameSA/Quaternion.hh"
#include "../GameSA/Vector.hh"
#include "../Serde/Serde.hh"

namespace Luna::Serde {

template<>
inline void Serialise(Serde::ISerialiser& serialiser, GameSA::CVector const& vec) {
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(&vec), sizeof (vec));
}

template<>
inline void Deserialise(Serde::IDeserialiser& deserialiser, GameSA::CVector& vec) {
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(&vec), sizeof (vec));
}

template<>
inline void Serialise(Serde::ISerialiser& serialiser, GameSA::CQuaternion const& quat) {
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(&quat), sizeof (quat));
}

template<>
inline void Deserialise(Serde::IDeserialiser& deserialiser, GameSA::CQuaternion& quat) {
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(&quat), sizeof (quat));
}

} // namespace Luna::Serde
