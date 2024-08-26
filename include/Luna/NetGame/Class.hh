// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Net/Client.hh"

namespace Luna::Net::Code {

class CRequestClassResponse;

} // namespace Luna::Net::Code

namespace Luna::NetGame {

typedef Net::Code::CRequestClassResponse CClass;

class CSpawnScreen {
public:
    CSpawnScreen() : CurrentClassID(0), MaxClassID(0) {}

    void RequestNextClass();
    void RequestPreviousClass();
    void RequestCurrentClass();

    void RequestSpawn();

    void Render();

    int CurrentClassID;
    int MaxClassID;
};

class CClassManager {
public:
    CClassManager() : m_ShowSpawnScreen(false) {}

    void Install();
    void Render();

    void HandleClassSelection();

    inline void SetMaxClassID(int id) {
        m_SpawnScreen.MaxClassID = id;
    }

private:
    static void ProcessClassRequestResponse(void* userData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);
    static void ProcessRequestSpawnResponse(void* userData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);

    void ConfirmSpawn();

    void OnClassChange(CClass& klass);
    void OnSpawn();
    void OnSpawnFail();

    CSpawnScreen m_SpawnScreen;
    bool m_ShowSpawnScreen;
};

} // namespace Luna::NetGame
