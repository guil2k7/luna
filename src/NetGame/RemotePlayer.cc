// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/RemotePlayer.hh>
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

void CRemotePlayer::ProcessServerJoin(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CServerJoin data;
    data.Deserialise(deserialiser);

    CPlayerPed::SetupPlayerPed(data.PlayerID + 2);
    CWorld::GetPlayerPed(data.PlayerID + 2)->GetMatrix() = CWorld::GetPlayerPed()->GetMatrix();
}

void CRemotePlayer::ProcessFootSync(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CFootSync data;
    data.Deserialise(deserialiser);

    CNetworkPad* pad = CPad::GetNetworkPadFromID(data.PlayerID + 2);
    pad->LeftRight = data.LeftRight;
    pad->UpDown = data.UpDown;
    pad->Keys = data.Keys;
}

void CRemotePlayer::Install() {
    Context->Client->RegisterHandlerForPacket(Packets::CFootSync::PACKET_ID, {
        ProcessFootSync,
        static_cast<void*>(this)
    });

    Context->Client->RegisterHandlerForRPC(Packets::CServerJoin::PACKET_ID, {
        ProcessServerJoin,
        static_cast<void*>(this)
    });

    Context->RemotePlayer = this;
}
