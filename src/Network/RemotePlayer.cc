// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Network/RemotePlayer.hh>
#include <Luna/Network/Code/Player.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/Task/TaskSimplePlayerOnFoot.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Network;
using namespace Luna::Engine::Game;

void CRemotePlayerComponent::Install(CClient& client) {
    #define REGISTER_HANDLER_FOR_RPC(id, method)                                   \
    client.RegisterHandlerForRPC(id, CRpcEventHandler(                             \
        reinterpret_cast<void*>(this),                                             \
        [](void* userData, CClient& client, uint8_t const* data, size_t bitSize) { \
            ((CRemotePlayerComponent*)userData)->method(client, data, bitSize);    \
        }                                                                          \
    ))

    REGISTER_HANDLER_FOR_RPC(Code::CServerJoin::PACKET_ID, ProcessServerJoin);

    #undef REGISTER_HANDLER_FOR_RPC

    client.RegisterPacketHandler(this);
}

bool CRemotePlayerComponent::OnReceivePacket(CClient& client, PacketID id, uint8_t const* data, size_t bitSize) {
    switch (id) {
    case Code::COnFootSync::PACKET_ID:
        ProcessOnFootSync(client, data, bitSize);
        break;

    default:
        return false;
    }

    return true;
}

void CRemotePlayerComponent::ProcessServerJoin(CClient& client, uint8_t const* rawData, size_t bitSize) {
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
    client.Send(Code::CSendSpawn(), RakNet::HIGH_PRIORITY, RakNet::RELIABLE_ORDERED);
}

void CRemotePlayerComponent::ProcessOnFootSync(CClient& client, uint8_t const* rawData, size_t bitSize) {
    Code::COnFootSync data;

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);
    deserialiser.Deserialise(data);

    CSimplePad* pad = CSimplePad::GetFromID(data.PlayerID + 2);

    pad->LeftRight = data.LeftRight;
    pad->UpDown = data.UpDown;
    pad->Keys = data.Keys;
}
