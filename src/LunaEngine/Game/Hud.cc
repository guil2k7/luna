// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/Hud.hh>
#include <LunaEngine/Game/Main.hh>
#include <LunaEngine/Helpers.hh>
#include <LunaEngine/Hooker.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

static void (LUNA_THISCALL *trampoline_DrawAfterFade)(CHud*);

static void LUNA_THISCALL Hook_DrawAfterFade(CHud* self) {
    self->DrawAfterFade();
}
 
void CHud::InjectPatchesAndHooks() {
    trampoline_DrawAfterFade = CHooker(GameAddress + 0x44A6A9, Hook_DrawAfterFade, true).Hook();
}

void CHud::DrawAfterFade() {
    trampoline_DrawAfterFade(this);
}
