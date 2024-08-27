// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/LocalPlayer.hh>
#include <Luna/NetGame/Packets/Core.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Engine;
using namespace Luna::Engine::Game;
using namespace Luna::Net;
using namespace Luna::NetGame;
using namespace Luna::Serde;

void CLocalPlayer::ProcessSetPlayerPos(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CSetPlayerPos data;
    data.Deserialise(deserialiser);

    CWorld::GetPlayerPed()->GetMatrix().Position = data.Position;
}

void CLocalPlayer::SendFootSync() {
    CPlayerPed* player = CWorld::GetPlayerPed();
    CPad* pad = CPad::GetPlayerPad();

    Packets::CFootSync data;
    data.LeftRight = pad->NewState.LeftStickX;
    data.UpDown = pad->NewState.LeftStickY;

    // serialiser.SerialiseU16(LeftRight);
    // serialiser.SerialiseU16(UpDown);
    // serialiser.SerialiseU16(Keys);
    // serialiser.Serialise(Position);
    // serialiser.Serialise(Rotation);
    // serialiser.SerialiseU8(Health);
    // serialiser.SerialiseU8(Armour);
    // serialiser.SerialiseU8(WeaponAdditionalKey);
    // serialiser.SerialiseU8(SpecialAction);
    // serialiser.Serialise(Velocity);
    // serialiser.Serialise(SurfingOffset);
    // serialiser.SerialiseU16(SurfingID);
    // serialiser.SerialiseU16(AnimationID);
    // serialiser.SerialiseU16(AnimationFlags);
}

void CLocalPlayer::Install() {
    Context->Client->RegisterHandlerForRPC(Packets::CSetPlayerPos::PACKET_ID, {
        ProcessSetPlayerPos,
        static_cast<void*>(this)
    });

    Context->LocalPlayer = this;
}
