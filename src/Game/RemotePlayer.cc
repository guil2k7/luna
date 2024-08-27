// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/Packets/Core.hh>
#include <Luna/Game/RemotePad.hh>
#include <Luna/Game/RemotePlayer.hh>
#include <Luna/GameSA/Pad.hh>
#include <Luna/GameSA/PlayerPed.hh>
#include <Luna/GameSA/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Core;
using namespace Luna::Game;
using namespace Luna::GameSA;
using namespace Luna::Net;

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

    CPlayerPed* player = CWorld::GetPlayerPed(data.PlayerID + 2);
    CRemotePad& pad = player->GetRemotePad();

    pad.LeftRight = data.LeftRight;
    pad.UpDown = data.UpDown;
    pad.Keys = data.Keys;
}

void CRemotePlayer::Install() {
    CLuna::Instance->Client->RegisterHandlerForPacket(Packets::CFootSync::PACKET_ID, {
        ProcessFootSync,
        static_cast<void*>(this)
    });

    CLuna::Instance->Client->RegisterHandlerForRPC(Packets::CServerJoin::PACKET_ID, {
        ProcessServerJoin,
        static_cast<void*>(this)
    });

    CLuna::Instance->RemotePlayer = this;
}
