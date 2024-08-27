// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/Game/Gui.hh>
#include <Luna/Game/Luna.hh>
#include <Luna/GameSA/Hud.hh>
#include <Luna/GameSA/Main.hh>

using namespace Luna::Core;
using namespace Luna::Game;
using namespace Luna::GameSA;

static void (LUNA_THISCALL *Trampoline_DrawAfterFade)(CHud*);

void CHud::InstallMods() {
    Trampoline_DrawAfterFade = TakeAndReplace(
        GameAddress + 0x683C6C,
        GetMethodPointer(&CHud::DrawAfterFade)
    );
}

void CHud::DrawAfterFade() {
    Trampoline_DrawAfterFade(this);

    CGui::Instance->Render();
    CLuna::Instance->Update();
}
