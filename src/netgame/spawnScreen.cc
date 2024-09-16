// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/spawnScreen.hh>
#include <luna/netgame/main.hh>
#include <luna/netcode/class.hh>
#include <imgui.h>

using namespace luna::netgame;

SpawnScreen* SpawnScreen::s_instance = nullptr;

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
    data.classID = currentClassID;

    g_client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void SpawnScreen::requestSpawn() {
    netcode::RequestSpawn data;
    g_client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::RELIABLE_SEQUENCED);
}

void SpawnScreen::render() {
    ImGui::Begin(
        "Spawn Screen", nullptr,
        ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoSavedSettings
    );

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
        (io.DisplaySize.y * 0.90f) - windowSize.y)
    );

    ImGui::End();
}
