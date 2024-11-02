// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/hud.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>
#include <luna/netgame/gui.hh>
#include <luna/netgame/main.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

static void (LUNA_THISCALL* g_trampoline_DrawAfterFade)(Hud*);

void Hud::installMods() {
    g_trampoline_DrawAfterFade = takeAndReplace(
        g_gameAddress + 0x683C6C,
        getMethodPointer(&Hud::drawAfterFade)
    );
}

void Hud::drawAfterFade() {
    g_trampoline_DrawAfterFade(this);

    g_client->update();
    Gui::get()->render();
}
