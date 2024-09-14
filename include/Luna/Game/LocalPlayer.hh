// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Luna.hh"
#include <chrono>

namespace Luna::Game {

class CLocalPlayerManager {
public:
    void Install();
    void Process();

    std::chrono::milliseconds FootSyncRate;

private:
    static void ProcessSetPlayerPos(void* userData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);

    void SendFootSync();

    std::chrono::time_point<std::chrono::steady_clock> m_LastFootSync;
};

} // namespace Luna::Game
