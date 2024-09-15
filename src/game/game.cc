// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/game.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>
#include <luna/netgame/luna.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

static bool(LUNA_STDCALL* g_trampolineIniT3)(char const*);

void Game::installMods() {
    g_trampolineIniT3 = takeAndReplace(GAME_ADDRESS + 0x684308, Game::init3);
}

bool Game::init3(char const* datFile) {
    bool retValue = g_trampolineIniT3(datFile);

    Luna::s_instance->initialise();

    return retValue;
}
