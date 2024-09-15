// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/world.hh>
#include <luna/game/main.hh>
#include <luna/netgame/definitions.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

PlayerInfo* World::s_players = nullptr;

void World::installMods() {
    s_players = new PlayerInfo[MAX_PLAYERS];

    *reinterpret_cast<PlayerInfo**>(GAME_ADDRESS + 0x6883C0) = s_players;
}
