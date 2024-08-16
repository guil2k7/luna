// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/Game.hh>
#include <LunaEngine/Game/Main.hh>
#include <LunaEngine/Helpers.hh>
#include <LunaEngine/Hooker.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

static int (LUNA_STDCALL *trampoline_Init3)(char const*);

static int CGame_Init3(char const* param1) {
    return trampoline_Init3(param1);
}

void CGame::InjectPatchesAndHooks() {
    trampoline_Init3 = CHooker(GameAddress + 0x4831A9, CGame_Init3, true).Hook();
}
