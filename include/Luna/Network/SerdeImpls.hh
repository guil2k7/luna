// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Serde/Serde.hh"
#include "../Engine/Game/Vector.hh"
#include "../Engine/Game/Quaternion.hh"

namespace Luna::Serde {

template<>
inline void Serialise(Serde::ISerialiser& serialiser, Engine::Game::CVector const& vec) {
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(&vec), sizeof (vec));
}

template<>
inline void Deserialise(Serde::IDeserialiser& deserialiser, Engine::Game::CVector& vec) {
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(&vec), sizeof (vec));
}

template<>
inline void Serialise(Serde::ISerialiser& serialiser, Engine::Game::CQuaternion const& quat) {
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(&quat), sizeof (quat));
}

template<>
inline void Deserialise(Serde::IDeserialiser& deserialiser, Engine::Game::CQuaternion& quat) {
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(&quat), sizeof (quat));
}

} // namespace Luna::Serde
