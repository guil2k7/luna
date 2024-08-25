// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/World.hh>
#include <Luna/Engine/Main.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

CPlayerInfo* CWorld::Players = nullptr;

void CWorld::InstallMods() {
    Players = reinterpret_cast<CPlayerInfo*>(
        ::operator new(sizeof (CPlayerInfo) * 1024));

    *reinterpret_cast<CPlayerInfo**>(GameAddress + 0x6883C0) = Players;
}
