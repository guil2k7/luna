// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/LocalPlayer.hh>
#include <Luna/Game/Packets/Core.hh>
#include <Luna/GameSA/Pad.hh>
#include <Luna/GameSA/PlayerPed.hh>
#include <Luna/GameSA/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Core;
using namespace Luna::Game;
using namespace Luna::GameSA;
using namespace Luna::Net;
using namespace Luna::Serde;

void CLocalPlayerManager::ProcessSetPlayerPos(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CSetPlayerPos data;
    data.Deserialise(deserialiser);

    CWorld::GetPlayerPed()->GetMatrix().Position = data.Position;
}

void CLocalPlayerManager::Process() {
    auto now = std::chrono::steady_clock::now();

    if (now > m_LastFootSync + FootSyncRate) {
        SendFootSync();
        m_LastFootSync = now;
    }
}

void CLocalPlayerManager::SendFootSync() {
    CPlayerPed* player = CWorld::GetPlayerPed();
    CPad* pad = CPad::GetMainPlayerPad();

    Packets::CFootSync data;
    data.LeftRight = pad->NewState.LeftStickX;
    data.UpDown = pad->NewState.LeftStickY;
    data.Position = player->GetMatrix().Position;
    data.Health = player->GetHealth();
    data.Armour = player->GetArmour();
    data.Velocity = player->GetCurrentVelocity();

    CLuna::Instance->Client->Send(data, RakNet::DEFAULT_PRIORITY, RakNet::UNRELIABLE_SEQUENCED);

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

void CLocalPlayerManager::Install() {
    CLuna::Instance->Client->RegisterHandlerForRPC(Packets::CSetPlayerPos::PACKET_ID, {
        ProcessSetPlayerPos,
        static_cast<void*>(this)
    });

    CLuna::Instance->LocalPlayer = this;
}
