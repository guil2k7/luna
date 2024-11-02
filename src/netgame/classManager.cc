// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/netgame/classManager.hh>
#include <luna/netgame/main.hh>
#include <luna/netgame/localPlayer.hh>
#include <luna/netcode/class.hh>
#include <luna/game/pad.hh>
#include <imgui.h>

using namespace luna::game;
using namespace luna::netgame;
using namespace luna::netcode;

ClassManager* ClassManager::s_instance = nullptr;

void ClassManager::registerNetworkCode() {
    g_client->registerHandlerForPacket(new RequestClassResponse());
    g_client->registerHandlerForPacket(new RequestSpawnResponse());
}

void ClassManager::requestNextClass() {
    currentClassID += 1;

    if (currentClassID == numberOfClasses)
        currentClassID = 0;

    requestCurrentClass();
}

void ClassManager::requestPreviousClass() {
    if (currentClassID < 1)
        currentClassID = numberOfClasses - 1;
    else
        currentClassID -= 1;

    requestCurrentClass();
}

void ClassManager::requestCurrentClass() {
    netcode::RequestClass data;
    data.classID = currentClassID;

    g_client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void ClassManager::requestSpawn() {
    netcode::RequestSpawn data;
    g_client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void ClassManager::render() {
    ImGui::Begin(
        "Spawn Screen", nullptr,
        ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoSavedSettings
    );

    if (ImGui::Button("<<"))
        requestPreviousClass();

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
        (io.DisplaySize.y * 0.90f) - windowSize.y)
    );

    ImGui::End();
}

void ClassManager::setCurrentClass(netcode::RequestClassResponse* klass) {
    if (m_currentClass != nullptr)
        delete m_currentClass;

    m_currentClass = klass;

    LocalPlayer::s_instance->setModelIndex(klass->modelID);
}

bool ClassManager::spawn() {
    if (m_currentClass == nullptr || !m_currentClass->selectable)
        return false;

    LocalPlayer::s_instance->matrix()->position = m_currentClass->spawn;
    LocalPlayer::s_instance->matrix()->setRotateZOnly(m_currentClass->zAngle);
    LocalPlayer::s_instance->setModelIndex(m_currentClass->modelID);

    Pad* pad = Pad::mainPlayerPad();
    pad->disablePlayerControls = 0;

    // Confirm spawn.
    SendSpawn data;
    g_client->send(data, RakNet::HIGH_PRIORITY, RakNet::RELIABLE_SEQUENCED);

    ClassManager::s_instance->hide();

    return true;
}
