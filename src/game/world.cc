// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/world.hh>
#include <luna/game/main.hh>
#include <luna/netgame/definitions.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

PlayerInfo* World::s_players = nullptr;

void World::installMods() {
    s_players = new PlayerInfo[MAX_PLAYERS];

    *reinterpret_cast<PlayerInfo**>(g_gameAddress + 0x6883C0) = s_players;
}
