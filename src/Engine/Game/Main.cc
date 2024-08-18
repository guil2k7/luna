// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Game/Game.hh>
#include <Luna/Engine/Game/Hud.hh>
#include <Luna/Engine/Game/OsWrapper.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/RW.hh>
#include <Luna/Engine/Game/World.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

uint8_t* Game::GameAddress = nullptr;

void Game::InitialiseMods() {
    CRenderWare::LoadLibrary();
    CHud::InitialiseMods();
    OsEvent::InitialiseMods();
}

void Game::InstallMods() {
    CGame::InstallMods();
    CHud::InstallMods();
    OsEvent::InstallMods();
    CPad::InstallMods();
    CPlayerPed::InstallMods();
    CWorld::InstallMods();
}
