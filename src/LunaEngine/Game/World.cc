// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/World.hh>
#include <LunaEngine/Game/Main.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

void CWorld::InjectPatchesAndHooks() {
    *reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS)
        = reinterpret_cast<CPlayerInfo*>(::operator new(sizeof (CPlayerInfo) * 1024));
}
