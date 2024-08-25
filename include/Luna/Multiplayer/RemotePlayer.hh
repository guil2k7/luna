// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Main.hh"

namespace Luna::Multiplayer {

class CRemotePlayer {
public:
    void Install();

private:
    static void ProcessOnFootSync(void* UserData, Network::CClient& client, uint8_t const* rawData, size_t bitSize);
    static void ProcessServerJoin(void* UserData, Network::CClient& client, uint8_t const* rawData, size_t bitSize);
};

} // namespace Luna::Multiplayer
