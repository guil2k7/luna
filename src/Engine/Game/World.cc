// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/World.hh>
#include <Luna/Engine/Game/Addresses.hh>
#include <Luna/Engine/Game/Main.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CWorld::InstallMods() {
    *reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS)
        = reinterpret_cast<CPlayerInfo*>(::operator new(sizeof (CPlayerInfo) * 1024));
}

CPlayerInfo* CWorld::Players() {
    return *reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS);
}

CPlayerPed* CWorld::GetPlayerPed(int id) {
    return reinterpret_cast<CPlayerInfo**>(GameAddress + GAME_ADDR_PLAYERS)[id]->Ped;
}
