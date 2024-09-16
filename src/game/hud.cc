// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/hud.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>
#include <luna/netgame/gui.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

static void(LUNA_THISCALL* g_trampoline_DrawAfterFade)(Hud*);

void Hud::installMods() {
    g_trampoline_DrawAfterFade = takeAndReplace(
        g_gameAddress + 0x683C6C,
        getMethodPointer(&Hud::drawAfterFade)
    );
}

void Hud::drawAfterFade() {
    g_trampoline_DrawAfterFade(this);

    Gui::get()->render();
}
