// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "PlayerInfo.hh"

namespace Luna::Engine::Game {
    
class CWorld {
public:
    static void InstallMods();

    CWorld() = delete;
    ~CWorld() = delete;

    static CPlayerInfo* Players();
    static CPlayerPed* GetPlayerPed(int id = 0);
};

} // namespace Luna::Engine::Game
