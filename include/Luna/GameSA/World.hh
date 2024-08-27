// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "PlayerInfo.hh"

namespace Luna::GameSA {
    
class CWorld {
public:
    static void InstallMods();

    CWorld() = delete;
    ~CWorld() = delete;

    static inline CPlayerInfo* GetPlayers() {
        return Players;
    }

    static inline CPlayerPed* GetPlayerPed(int id = 0) {
        return Players[id].Ped;
    }

private:
    static CPlayerInfo* Players;
};

} // namespace Luna::GameSA
