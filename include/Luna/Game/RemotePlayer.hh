// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Luna.hh"

namespace Luna::Game {

class CRemotePlayer {
public:
    void Install();

private:
    static void ProcessFootSync(void* UserData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);
    static void ProcessServerJoin(void* UserData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);
};

} // namespace Luna::Game
