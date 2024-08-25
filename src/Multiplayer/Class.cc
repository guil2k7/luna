// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Multiplayer/Class.hh>
#include <Luna/Multiplayer/Main.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Network/Client.hh>
#include <Luna/Network/Code/Player.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;
using namespace Luna::Multiplayer;
using namespace Luna::Network;
using namespace Luna::Serde;

void CSpawnScreen::RequestNextClass() {
    CurrentClassID += 1;

    if (CurrentClassID == MaxClassID)
        CurrentClassID = 0;

    Code::CRequestClass data;
    data.ID = CurrentClassID;

    Context->Client->Send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_ORDERED);
}

void CSpawnScreen::RequestPreviousClass() {
    if (CurrentClassID < 1)
        CurrentClassID = MaxClassID;
    else
        CurrentClassID -= 1;

    Code::CRequestClass data;
    data.ID = CurrentClassID;

    Context->Client->Send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_ORDERED);
}

void CSpawnScreen::RequestSpawn() {
    Code::CRequestSpawn data;
    Context->Client->Send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_ORDERED);
}

void CSpawnScreen::Render() {
    ImGui::Begin(
        "Spawn Screen", nullptr,
        ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize |
        ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoScrollbar |
        ImGuiWindowFlags_NoSavedSettings
    );

    if (ImGui::Button("<<"))
        RequestNextClass();

    ImGui::SameLine(0, 0);

    if (ImGui::Button("Spawn"))
        RequestSpawn();

    ImGui::SameLine(0, 0);

    if (ImGui::Button(">>"))
        RequestNextClass();

    ImGui::End();
}

void CClassManager::ProcessClassRequestResponse(
    void* userData, CClient& client, uint8_t const* rawData, size_t bitSize)
{
    CBitDeserialiser deserialiser(rawData, bitSize);

    Code::CRequestClassResponse data;
    data.Deserialise(deserialiser);

    CClassManager* manager = static_cast<CClassManager*>(userData);
    manager->OnClassChange(data);
}

void CClassManager::ProcessRequestSpawnResponse(
    void* userData, CClient& client, uint8_t const* rawData, size_t bitSize)
{
    CBitDeserialiser deserialiser(rawData, bitSize);

    Code::CRequestSpawn data;
    data.Deserialise(deserialiser);

    CClassManager* manager = static_cast<CClassManager*>(userData);

    if (data.Allow == 2)
        manager->OnSpawn();
    else
        manager->OnSpawnFail();
}

void CClassManager::Install() {
    Context->Client->RegisterHandlerForRPC(Code::CRequestClass::PACKET_ID, {ProcessClassRequestResponse, this});
    Context->Client->RegisterHandlerForRPC(Code::CRequestSpawn::PACKET_ID, {ProcessRequestSpawnResponse, this});

    Context->ClassManager = this;
}

void CClassManager::Render() {
    if (m_ShowSpawnScreen)
        m_SpawnScreen.Render();
}

void CClassManager::HandleClassSelection() {
    CPlayerPed* player = CWorld::GetPlayerPed();
    CPad* pad = CPad::GetPlayerPad();

    player->SetHealth(100.0f);
    pad->DisablePlayerControls = 1;

    m_SpawnScreen.CurrentClassID = 0;
    m_ShowSpawnScreen = true;
}

void CClassManager::OnClassChange(CClass& klass) {
    
}

void CClassManager::OnSpawn() {
    CPad* pad = CPad::GetPlayerPad();
    pad->DisablePlayerControls = 0;
}

void CClassManager::OnSpawnFail() {

}
