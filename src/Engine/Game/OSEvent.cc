// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Game/OSEvent.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>
#include <Luna/Engine/Hooker.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

static struct {
    void (LUNA_STDCALL *TouchEvent)(eTouchAction, int, int, int);
    void (LUNA_STDCALL *KeyboardEvent)(bool, int, int, bool);
} Trampoline;

static void Hook_AND_TouchEvent(eTouchAction action, int unknown, int x, int y) {
    Trampoline.TouchEvent(action, unknown, x, y);
}

void OSEvents::InstallMods() {
    Trampoline.TouchEvent = CHooker(GameAddress + 0x279741, Hook_AND_TouchEvent, true).Hook();
}
