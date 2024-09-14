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

void CRemotePlayerManager::ProcessServerJoin(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CServerJoin data;
    data.Deserialise(deserialiser);

    CPlayerPed::SetupPlayerPed(data.PlayerID + 2);
    CWorld::GetPlayerPed(data.PlayerID + 2)->GetMatrix() = CWorld::GetPlayerPed()->GetMatrix();
}

void CRemotePlayerManager::ProcessFootSync(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    CRemotePlayerManager* manager = static_cast<CRemotePlayerManager*>(userData);

    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CFootSync data;
    data.Deserialise(deserialiser);

    CRemotePlayer* player = manager->GetPlayer(data.PlayerID);
    player->SyncFoot(data);
}

void CRemotePlayerManager::Install() {
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

CRemotePlayer* CRemotePlayerManager::GetPlayer(int id) {
    return static_cast<CRemotePlayer*>(
        CWorld::GetPlayerPed(id + 2)
    );
}

void CRemotePlayer::SyncFoot(Packets::CFootSync& data) {
    m_RemotePad.LeftRight = data.LeftRight;
    m_RemotePad.UpDown = data.UpDown;
    m_RemotePad.Keys = data.Keys;

    if (data.Health != m_Health)
        SetHealth(data.Health);

    if (data.Armour != m_Armour)
        m_Armour = data.Armour;
}

void CRemotePlayer::CheckPosition(CVector expPosition) {
    CVector& position = GetMatrix().Position;
    CVector offset = position.GetAbsoluteOffset(expPosition);

    if (offset.x < 2.0f && offset.y < 2.0f && offset.z < 2.0f) {
        m_CurrentVelocity = m_CurrentVelocity.GetOffset(position);
        m_CurrentVelocity *= CVector(0.1f, 0.1f, 0.1f);
    }
    else {
        position = expPosition;
    }
}
