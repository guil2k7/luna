// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/Main.hh>
#include <LunaEngine/Game/Game.hh>
#include <LunaEngine/Game/Hud.hh>
#include <LunaEngine/Game/OSEvent.hh>
#include <LunaEngine/Game/Pad.hh>
#include <LunaEngine/Game/PlayerPed.hh>
#include <LunaEngine/Game/RW.hh>
#include <LunaEngine/Game/World.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

uint8_t* Game::GameAddress = nullptr;

void Game::Initialise() {
    CRenderWare::LoadLibrary();
}

void Game::InjectPatchesAndHooks() {
    CGame::InjectPatchesAndHooks();
    CHud::InjectPatchesAndHooks();
    CPad::InjectPatchesAndHooks();
    CPlayerPed::InjectPatchesAndHooks();
    OSEvents::InjectPatchesAndHooks();
    CWorld::InjectPatchesAndHooks();
}
