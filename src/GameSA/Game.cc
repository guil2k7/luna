// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/GameSA/Game.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/Game/Luna.hh>

using namespace Luna::Core;
using namespace Luna::Game;
using namespace Luna::GameSA;

static bool (LUNA_STDCALL *Trampoline_Init3)(char const*);

void CGame::InstallMods() {
    Trampoline_Init3 = TakeAndReplace(GameAddress + 0x684308, CGame::Init3);
}

bool CGame::Init3(char const* datFile) {
    bool retValue = Trampoline_Init3(datFile);

    CLuna::Instance->Initialise();

    return retValue;
}
