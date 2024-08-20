// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Game.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

static int (LUNA_STDCALL *Trampoline_Init3)(char const*);

static int CGame_Init3(char const* param1) {
    return Trampoline_Init3(param1);
}

void CGame::InstallMods() {
    Trampoline_Init3 = TakeAndReplace(GameAddress + 0x684308, CGame_Init3);
}
