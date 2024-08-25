// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Game.hh>
#include <Luna/Engine/Main.hh>
#include <Luna/Engine/Helpers.hh>
#include <vector>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

struct CContext {
    std::vector<IGameExtension*> Extensions;

    CContext() {
        Extensions.reserve(4);
    }
};

static CContext* Context = nullptr;
static bool (LUNA_STDCALL *Trampoline_Init3)(char const*);

void CGame::InitialiseMods() {
    Context = new CContext();
}

void CGame::InstallMods() {
    Trampoline_Init3 = TakeAndReplace(GameAddress + 0x684308, CGame::Init3);
}

void CGame::InitialiseExtensions() {
    for (auto extension : Context->Extensions)
        extension->Initialise();
}

void CGame::AddExtension(IGameExtension *extension) {
    Context->Extensions.push_back(extension);
}

bool CGame::Init3(char const* datFile) {
    bool returnValue = Trampoline_Init3(datFile);

    for (auto extension : Context->Extensions)
        extension->Init3();

    return returnValue;
}
