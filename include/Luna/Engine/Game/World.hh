// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "Addresses.hh"
#include "Main.hh"
#include "PlayerInfo.hh"

namespace Luna::Engine::Game {
    
class CWorld {
public:
    static void InstallMods();

    CWorld() = delete;
    ~CWorld() = delete;

    static inline CPlayerInfo* Players() {
        return *reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS);
    }

    static inline CPlayerPed* GetPlayerPed(int id = 0) {
        return reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS)[id]->Ped;
    }
};

} // namespace Luna::Engine::Game
