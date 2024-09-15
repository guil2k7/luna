// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../net/client.hh"

namespace luna::netcode {
    class RequestClassResponse;
} // namespace luna::netcode

namespace luna::netgame {

typedef netcode::RequestClassResponse SpawnClass;

class SpawnScreen {
public:
    SpawnScreen()
        : currentClassID(0)
        , numberOfClasses(0)
    { }

    void requestNextClass();
    void requestPreviousClass();
    void requestCurrentClass();

    void requestSpawn();

    void render();

    int currentClassID;
    int numberOfClasses;
};

class ClassManager {
public:
    ClassManager()
        : m_showSpawnScreen(false)
    { }

    void install();
    void render();

    void handleClassSelection();

    inline void setNumberOfClasses(int num) {
        m_spawnScreen.numberOfClasses = num;
    }

private:
    static void processClassRequestResponse(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize);
    static void processRequestSpawnResponse(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize);

    void confirmSpawn();

    void onClassChange(SpawnClass& klass);
    void onSpawn();
    void onSpawnFail();

    SpawnScreen m_spawnScreen;
    bool m_showSpawnScreen;
};

} // namespace luna::netgame
