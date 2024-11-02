// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/game.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>
#include <luna/netgame/main.hh>

using namespace luna::core;
using namespace luna::game;
using namespace luna::netgame;

static bool(LUNA_STDCALL* g_trampoline_Init3)(char const*);

void Game::installMods() {
    g_trampoline_Init3 = takeAndReplace(g_gameAddress + 0x684308, Game::init3);
}

bool Game::init3(char const* datFile) {
    bool retValue = g_trampoline_Init3(datFile);

    g_client->connect();

    return retValue;
}
