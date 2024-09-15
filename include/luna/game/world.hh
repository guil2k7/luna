// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "playerInfo.hh"

namespace luna::game {

class World {
public:
    static void installMods();

    World() = delete;
    ~World() = delete;

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
