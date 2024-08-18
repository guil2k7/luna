// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

namespace Luna::Network::Code {

inline void CConnectionRequestAccepted::Deserialise(Serde::IDeserialiser& deserialiser) {
    deserialiser.SkipBytes(6);
    PlayerIndex = deserialiser.DeserialiseU16();
    SampToken = deserialiser.DeserialiseU32();
}

inline void CClientLogin::Serialise(Serde::ISerialiser& serialiser) const {
    serialiser.SerialiseU32(ClientVersion);
    serialiser.SerialiseU8(Modded);
    serialiser.SerialiseU8(Nickname.length());
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(Nickname.data()), Nickname.length());
    serialiser.SerialiseU32(ClientChallengeResponse);
    serialiser.SerialiseU8(Auth.length());
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(Auth.data()), Auth.length());
    serialiser.SerialiseU8(ClientVersionString.length());
    serialiser.SerialiseBytes(reinterpret_cast<uint8_t const*>(ClientVersionString.data()), ClientVersionString.length());
    
    // Official clients send the challenge again at the end,
    // while other clients do not.
    serialiser.SerialiseU32(ClientChallengeResponse);
}

} // namespace Luna::Network::Code
