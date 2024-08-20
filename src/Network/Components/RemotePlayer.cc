// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Network/Components/RemotePlayer.hh>
#include <Luna/Network/Code/Player.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/Task/TaskSimplePlayerOnFoot.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Network;
using namespace Luna::Engine::Game;

static void ProcessServerJoin(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Code::CServerJoin data;

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);
    deserialiser.Deserialise(data);

    CPlayerPed::SetupPlayerPed(data.PlayerID + 2);

    CPlayerPed* mainPlayer = CWorld::GetPlayerPed();
    CPlayerPed* remotePlayer = CWorld::GetPlayerPed(data.PlayerID + 2);

    remotePlayer->GetTaskManager()->SetTask(
        CTaskSimplePlayerOnFoot::Create(), 4, false);

    remotePlayer->GetMatrix() = mainPlayer->GetMatrix();

    Code::CRequestClass requestClass;
    requestClass.ID = 0;

    client.Send(requestClass, RakNet::HIGH_PRIORITY, RakNet::RELIABLE_ORDERED);
    client.Send(Code::CRequestSpawn(), RakNet::HIGH_PRIORITY, RakNet::RELIABLE_ORDERED);
}

static void ProcessOnFootSync(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Code::COnFootSync data;

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);
    deserialiser.Deserialise(data);

    CSimplePad* pad = CSimplePad::GetFromID(data.PlayerID + 2);

    pad->LeftRight = data.LeftRight;
    pad->UpDown = data.UpDown;
    pad->Keys = data.Keys;
}

void CRemotePlayerComponent::Install(CClient& client) {
    client.RegisterHandlerForPacket(Code::COnFootSync::PACKET_ID, {
        ProcessOnFootSync,
        static_cast<void*>(this)
    });

    client.RegisterHandlerForRPC(Code::CServerJoin::PACKET_ID, {
        ProcessServerJoin,
        static_cast<void*>(this)
    });
}
