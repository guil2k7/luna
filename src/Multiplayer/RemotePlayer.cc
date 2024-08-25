// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Multiplayer/RemotePlayer.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Network/Code/Player.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Engine;
using namespace Luna::Engine::Game;
using namespace Luna::Network;
using namespace Luna::Multiplayer;

void CRemotePlayer::ProcessServerJoin(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Code::CServerJoin data;
    data.Deserialise(deserialiser);

    CPlayerPed::SetupPlayerPed(data.PlayerID + 2);
}

void CRemotePlayer::ProcessOnFootSync(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Code::COnFootSync data;
    data.Deserialise(deserialiser);

    CNetworkPad* pad = CPad::GetNetworkPadFromID(data.PlayerID + 2);
    pad->LeftRight = data.LeftRight;
    pad->UpDown = data.UpDown;
    pad->Keys = data.Keys;
}

void CRemotePlayer::Install() {
    Context->Client->RegisterHandlerForPacket(Code::COnFootSync::PACKET_ID, {
        ProcessOnFootSync,
        static_cast<void*>(this)
    });

    Context->Client->RegisterHandlerForRPC(Code::CServerJoin::PACKET_ID, {
        ProcessServerJoin,
        static_cast<void*>(this)
    });

    Context->RemotePlayer = this;
}
