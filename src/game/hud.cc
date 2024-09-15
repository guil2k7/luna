// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/hud.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>
#include <luna/netgame/gui.hh>
#include <luna/netgame/luna.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

static void(LUNA_THISCALL* trampoline_DrawAfterFade)(Hud*);

void Hud::installMods() {
    trampoline_DrawAfterFade = takeAndReplace(
        GAME_ADDRESS + 0x683C6C,
        getMethodPointer(&Hud::drawAfterFade)
    );
}

void Hud::drawAfterFade() {
    trampoline_DrawAfterFade(this);

    Gui::s_instance->render();
    Luna::s_instance->update();
}
