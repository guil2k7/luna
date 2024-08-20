// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Network/Components/LocalPlayer.hh>
#include <Luna/Network/Code/Player.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/Task/TaskSimplePlayerOnFoot.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Network;
using namespace Luna::Engine::Game;

static void ProcessSetPlayerPos(void* UserData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Code::CSetPlayerPos data;

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);
    deserialiser.Deserialise(data);

    CWorld::GetPlayerPed()->GetMatrix().Position = data.Position;
}

static void ProcessRequestSpawnResponse(void* UserData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Code::CRequestSpawn data;

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);
    deserialiser.Deserialise(data);

    if (data.Allow != 0)
        client.Send(Code::CSendSpawn(), RakNet::HIGH_PRIORITY, RakNet::RELIABLE_ORDERED);
}

void CLocalPlayerComponent::Install(CClient& client) {
    client.RegisterHandlerForRPC(Code::CSetPlayerPos::PACKET_ID, {
        ProcessSetPlayerPos,
        static_cast<void*>(this)
    });

    client.RegisterHandlerForRPC(Code::CRequestSpawn::PACKET_ID, {
        ProcessRequestSpawnResponse,
        static_cast<void*>(this)
    });
}
