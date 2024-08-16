// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/OSEvent.hh>
#include <LunaEngine/Game/Main.hh>
#include <LunaEngine/Helpers.hh>
#include <LunaEngine/Hooker.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

static struct {
    void (LUNA_STDCALL *TouchEvent)(eTouchAction, int, int, int);
    void (LUNA_STDCALL *KeyboardEvent)(bool, int, int, bool);
} trampoline;

static void Hook_AND_TouchEvent(eTouchAction action, int unknown, int x, int y) {
    trampoline.TouchEvent(action, unknown, x, y);
}

void OSEvents::InjectPatchesAndHooks() {
    trampoline.TouchEvent = CHooker(GameAddress + 0x279741, Hook_AND_TouchEvent, true).Hook();
}
