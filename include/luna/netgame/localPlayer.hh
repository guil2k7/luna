// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "luna.hh"
#include <chrono>

namespace luna::netgame {

class LocalPlayerManager {
public:
    void install();
    void process();

    std::chrono::milliseconds footSyncRate;

private:
    static void processSetPlayerPos(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize);

    void sendFootSync();

    std::chrono::time_point<std::chrono::steady_clock> m_lastFootSync;
};

} // namespace luna::netgame
