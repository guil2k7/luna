// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/World.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

CPlayerInfo* CWorld::Players = nullptr;

void CWorld::InstallMods() {
    Players = new CPlayerInfo[1024];

    *reinterpret_cast<CPlayerInfo**>(GameAddress + 0x6883C0) = Players;
}
