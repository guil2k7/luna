// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Engine/Extensions/ImGui.hh"
#include "../Network/Client.hh"

namespace Luna::Network::Code {

class CRequestClassResponse;

} // namespace Luna::Network::Code

namespace Luna::Multiplayer {

typedef Network::Code::CRequestClassResponse CClass;

class CSpawnScreen final : public Engine::Extensions::IImGuiWidget {
public:
    CSpawnScreen() : CurrentClassID(0), MaxClassID(0) {}

    void RequestNextClass();
    void RequestPreviousClass();
    void RequestSpawn();

    void Render() override;

    int CurrentClassID;
    int MaxClassID;
};

class CClassManager final : public Engine::Extensions::IImGuiWidget {
public:
    CClassManager() : m_ShowSpawnScreen(false) {}

    void Install();
    void Render() override;

    void HandleClassSelection();

    inline void SetMaxClassID(int id) {
        m_SpawnScreen.MaxClassID = id;
    }

private:
    static void ProcessClassRequestResponse(void* userData, Network::CClient& client, uint8_t const* rawData, size_t bitSize);
    static void ProcessRequestSpawnResponse(void* userData, Network::CClient& client, uint8_t const* rawData, size_t bitSize);

    void OnClassChange(CClass& klass);
    void OnSpawn();
    void OnSpawnFail();

    CSpawnScreen m_SpawnScreen;
    bool m_ShowSpawnScreen;
};

} // namespace Luna::Multiplayer
