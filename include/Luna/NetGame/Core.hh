// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Main.hh"

namespace Luna::NetGame {

class CCore {
public:
    void Install();

private:
    static void ProcessInitGame(void* UserData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);
};

} // namespace Luna::NetGame
