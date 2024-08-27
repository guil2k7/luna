// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/Class.hh>
#include <Luna/NetGame/Main.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Net/Client.hh>
#include <Luna/NetGame/Packets/Class.hh>
#include <Luna/Serde/BitSerde.hh>
#include <imgui.h>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;
using namespace Luna::NetGame;
using namespace Luna::Net;
using namespace Luna::Serde;

void CSpawnScreen::RequestNextClass() {
    CurrentClassID += 1;

    if (CurrentClassID == NumberOfClasses)
        CurrentClassID = 0;

    RequestCurrentClass();
}

void CSpawnScreen::RequestPreviousClass() {
    if (CurrentClassID < 1)
        CurrentClassID = NumberOfClasses - 1;
    else
        CurrentClassID -= 1;

    RequestCurrentClass();
}

void CSpawnScreen::RequestCurrentClass() {
    Packets::CRequestClass data;
    data.ID = CurrentClassID;

    Context->Client->Send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void CSpawnScreen::RequestSpawn() {
    Packets::CRequestSpawn data;
    Context->Client->Send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
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

    ImGui::SameLine(0, 5.0f);

    if (ImGui::Button("Spawn"))
        RequestSpawn();

    ImGui::SameLine(0, 5.0f);

    if (ImGui::Button(">>"))
        RequestNextClass();

    ImGuiIO& io = ImGui::GetIO();
    ImVec2 windowSize = ImGui::GetWindowSize();
    
    ImGui::SetWindowPos(ImVec2(
        (io.DisplaySize.x - windowSize.x) / 2.0f,
        (io.DisplaySize.y * 0.90f) - windowSize.y
    ));

    ImGui::End();
}

void CClassManager::ProcessClassRequestResponse(
    void* userData, CClient& client, uint8_t const* rawData, size_t bitSize)
{
    CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CRequestClassResponse data;
    data.Deserialise(deserialiser);

    CClassManager* manager = static_cast<CClassManager*>(userData);
    manager->OnClassChange(data);
}

void CClassManager::ProcessRequestSpawnResponse(
    void* userData, CClient& client, uint8_t const* rawData, size_t bitSize)
{
    CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CRequestSpawnResponse data;
    data.Deserialise(deserialiser);

    CClassManager* manager = static_cast<CClassManager*>(userData);

    if (data.Allow > 0)
        manager->OnSpawn();
    else
        manager->OnSpawnFail();
}

void CClassManager::Install() {
    Context->Client->RegisterHandlerForRPC(Packets::CRequestClassResponse::PACKET_ID, {ProcessClassRequestResponse, this});
    Context->Client->RegisterHandlerForRPC(Packets::CRequestSpawn::PACKET_ID, {ProcessRequestSpawnResponse, this});

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
    m_SpawnScreen.RequestCurrentClass();

    m_ShowSpawnScreen = true;
}

void CClassManager::OnClassChange(CClass& klass) {
    
}

void CClassManager::ConfirmSpawn() {
    Packets::CSendSpawn data;
    Context->Client->Send(data, RakNet::HIGH_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void CClassManager::OnSpawn() {
    CPad* pad = CPad::GetPlayerPad();
    pad->DisablePlayerControls = 0;

    ConfirmSpawn();
}

void CClassManager::OnSpawnFail() {

}
