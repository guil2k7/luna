// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Network/LocalPlayer.hh>
#include <Luna/Network/Code/Player.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/Task/TaskSimplePlayerOnFoot.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Network;
using namespace Luna::Engine::Game;

void CLocalPlayerComponent::Install(CClient& client) {
    #define REGISTER_HANDLER_FOR_RPC(id, method)                                   \
    client.RegisterHandlerForRPC(id, CRpcEventHandler(                             \
        reinterpret_cast<void*>(this),                                             \
        [](void* userData, CClient& client, uint8_t const* data, size_t bitSize) { \
            ((CLocalPlayerComponent*)userData)->method(client, data, bitSize);    \
        }                                                                          \
    ))

    REGISTER_HANDLER_FOR_RPC(Code::CSetPlayerPos::PACKET_ID, ProcessSetPlayerPos);

    #undef REGISTER_HANDLER_FOR_RPC
}

void CLocalPlayerComponent::ProcessSetPlayerPos(CClient& client, uint8_t const* rawData, size_t bitSize) {
    Code::CSetPlayerPos data;

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);
    deserialiser.Deserialise(data);

    CWorld::GetPlayerPed(0)->GetMatrix().Position = data.Position;
}
