// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Game/World.hh>
#include <Luna/Engine/Game/Main.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CWorld::InstallMods() {
    *reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS)
        = reinterpret_cast<CPlayerInfo*>(::operator new(sizeof (CPlayerInfo) * 1024));
}
