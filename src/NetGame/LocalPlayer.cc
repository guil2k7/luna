// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/LocalPlayer.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Net/Code/Player.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Engine;
using namespace Luna::Engine::Game;
using namespace Luna::Net;
using namespace Luna::NetGame;

void CLocalPlayer::ProcessSetPlayerPos(void* UserData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Code::CSetPlayerPos data;
    data.Deserialise(deserialiser);

    CWorld::GetPlayerPed()->GetMatrix().Position = data.Position;
}

void CLocalPlayer::Install() {
    Context->Client->RegisterHandlerForRPC(Code::CSetPlayerPos::PACKET_ID, {
        ProcessSetPlayerPos,
        static_cast<void*>(this)
    });

    Context->LocalPlayer = this;
}
