// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Luna.hh"

namespace Luna::Game {

class CLocalPlayer {
public:
    void Install();

private:
    static void ProcessSetPlayerPos(void* UserData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);

    void SendFootSync();
};

} // namespace Luna::Game
