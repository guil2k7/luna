// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "entity.hh"
#include "playerInfo.hh"

namespace luna::game {

class World {
public:
    static void installMods();

    World() = delete;
    ~World() = delete;

    inline static void add(Entity* entity) {
        core::callFunction<void>(g_gameAddress + 0x433419, entity);
    }

    inline static void remove(Entity* entity) {
        core::callFunction<void>(g_gameAddress + 0x43330D, entity);
    }

    inline static PlayerInfo* players() {
        return s_players;
    }

    inline static PlayerPed* getPlayerPed(int id = 0) {
        return s_players[id].ped;
    }

private:
    static PlayerInfo* s_players;
};

} // namespace luna::game
