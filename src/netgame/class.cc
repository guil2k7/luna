// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/class.hh>
#include <luna/netgame/luna.hh>
#include <luna/game/pad.hh>
#include <luna/game/playerPed.hh>
#include <luna/game/world.hh>
#include <luna/net/client.hh>
#include <luna/netcode/class.hh>
#include <luna/serde/bitSerde.hh>
#include <imgui.h>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;
using namespace luna::net;
using namespace luna::serde;

void SpawnScreen::requestNextClass() {
    currentClassID += 1;

    if (currentClassID == numberOfClasses)
        currentClassID = 0;

    requestCurrentClass();
}

void SpawnScreen::requestPreviousClass() {
    if (currentClassID < 1)
        currentClassID = numberOfClasses - 1;
    else
        currentClassID -= 1;

    requestCurrentClass();
}

void SpawnScreen::requestCurrentClass() {
    netcode::RequestClass data;
    data.id = currentClassID;

    Luna::s_instance->client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void SpawnScreen::requestSpawn() {
    netcode::RequestSpawn data;
    Luna::s_instance->client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void SpawnScreen::render() {
    ImGui::Begin(
        "Spawn Screen", nullptr,
        ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoSavedSettings);

    if (ImGui::Button("<<"))
        requestNextClass();

    ImGui::SameLine(0, 5.0f);

    if (ImGui::Button("Spawn"))
        requestSpawn();

    ImGui::SameLine(0, 5.0f);

    if (ImGui::Button(">>"))
        requestNextClass();

    ImGuiIO& io = ImGui::GetIO();
    ImVec2 windowSize = ImGui::GetWindowSize();

    ImGui::SetWindowPos(ImVec2(
        (io.DisplaySize.x - windowSize.x) / 2.0f,
        (io.DisplaySize.y * 0.90f) - windowSize.y));

    ImGui::End();
}

void ClassManager::processClassRequestResponse(
    void* userData, Client& client, uint8_t const* rawData, size_t bitSize)
{
    BitDeserialiser deserialiser(rawData, bitSize);

    netcode::RequestClassResponse data;
    data.deserialise(deserialiser);

    ClassManager* manager = static_cast<ClassManager*>(userData);
    manager->onClassChange(data);
}

void ClassManager::processRequestSpawnResponse(
    void* userData, Client& client, uint8_t const* rawData, size_t bitSize)
{
    BitDeserialiser deserialiser(rawData, bitSize);

    netcode::RequestSpawnResponse data;
    data.deserialise(deserialiser);

    ClassManager* manager = static_cast<ClassManager*>(userData);

    if (data.allow > 0)
        manager->onSpawn();
    else
        manager->onSpawnFail();
}

void ClassManager::install() {
    Luna::s_instance->client->registerHandlerForRPC(netcode::RequestClassResponse::PACKET_ID, { processClassRequestResponse, this });
    Luna::s_instance->client->registerHandlerForRPC(netcode::RequestSpawn::PACKET_ID, { processRequestSpawnResponse, this });

    Luna::s_instance->classManager = this;
}

void ClassManager::render() {
    if (m_showSpawnScreen)
        m_spawnScreen.render();
}

void ClassManager::handleClassSelection() {
    PlayerPed* player = World::getPlayerPed();
    Pad* pad = Pad::mainPlayerPad();

    player->setHealth(100.0f);
    pad->disablePlayerControls = 1;

    m_spawnScreen.currentClassID = 0;
    m_spawnScreen.requestCurrentClass();

    m_showSpawnScreen = true;
}

void ClassManager::onClassChange(SpawnClass& klass) {
}

void ClassManager::confirmSpawn() {
    netcode::SendSpawn data;
    Luna::s_instance->client->send(data, RakNet::HIGH_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void ClassManager::onSpawn() {
    Pad* pad = Pad::mainPlayerPad();
    pad->disablePlayerControls = 0;

    confirmSpawn();

    m_showSpawnScreen = false;
}

void ClassManager::onSpawnFail() {
}
