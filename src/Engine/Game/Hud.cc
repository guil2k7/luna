// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Hud.hh>
#include <Luna/Engine/Game/Addresses.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>
#include <Luna/Engine/Hooker.hh>
#include <vector>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

struct CContext {
    std::vector<IHudExtension*> Extensions;

    CContext() {
        Extensions.reserve(4);
    }
};

static CContext* Context = nullptr;
static void (LUNA_THISCALL *Trampoline_DrawAfterFade)(CHud*);

void CHud::InitialiseMods() {
    Context = new CContext();
}

void CHud::InstallMods() {
    Trampoline_DrawAfterFade = CHooker<decltype(Trampoline_DrawAfterFade)>(
        GameAddress + GAME_ADDR_CHUD_DRAWAFTERFADE,
        GetMethodPointer(&CHud::DrawAfterFade),
        true
    ).Hook();
}

void CHud::InitialiseExtensions() {
    for (auto extension : Context->Extensions)
        extension->Initialise();
}

void CHud::AddExtension(IHudExtension *extension) {
    Context->Extensions.push_back(extension);
}

void CHud::DrawAfterFade() {
    Trampoline_DrawAfterFade(this);

    for (auto extension : Context->Extensions)
        extension->DrawAfterFade(this);
}
