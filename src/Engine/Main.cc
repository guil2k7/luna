// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Main.hh>
#include <Luna/Engine/Game/Game.hh>
#include <Luna/Engine/Game/Hud.hh>
#include <Luna/Engine/Game/OsWrapper.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/RW.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Engine/Memory.hh>
#include <Luna/Engine/Extensions/ImGui.hh>
#include <spdlog/spdlog.h>
#include <dlfcn.h>

using namespace Luna;
using namespace Luna::Engine;
using namespace Luna::Engine::Extensions;
using namespace Luna::Engine::Game;

uint8_t* Engine::GameAddress = nullptr;

static void GetGameAddress() {
    static void* libGTASAHandle;

    libGTASAHandle = dlopen("libGTASA.so", RTLD_NOLOAD);

    if (libGTASAHandle == nullptr)
        spdlog::error("'libGTASA.so' not found!");

    // Calculate the game address.
    GameAddress
        = reinterpret_cast<uint8_t*>(dlsym(libGTASAHandle, "RwEngineInstance"))
        - 0x6CCD38;
}

static void RemoveWriteProtections() {
    // .data
    ModifyMemoryProtection(GameAddress + 0x67A000, 0x6B2D84 - 0x67A000, PROTECTION_READ | PROTECTION_WRITE);

    // .got
    ModifyMemoryProtection(GameAddress + 0x66E4D0, 0x679FF3 - 0x66E4D0, PROTECTION_READ | PROTECTION_WRITE);

    // .bss
    ModifyMemoryProtection(GameAddress + 0x6B2DC0, 0xA98FEF - 0x6B2DC0, PROTECTION_READ | PROTECTION_WRITE);

    // .text
    ModifyMemoryProtection(GameAddress + 0x1A1780, 0x5E84E7 - 0x1A1780, PROTECTION_READ | PROTECTION_WRITE | PROTECTION_EXEC);
}

void Engine::InitialiseMods() {
    GetGameAddress();
    RemoveWriteProtections();

    CRenderWare::LoadLibrary();
    CHud::InitialiseMods();
    OsEvent::InitialiseMods();
    CPad::InitialiseMods();
}

void Engine::InstallMods() {
    CGame::InstallMods();
    CHud::InstallMods();
    OsEvent::InstallMods();
    CPad::InstallMods();
    CPlayerPed::InstallMods();
    CWorld::InstallMods();
}

void Engine::InitialiseExtensions() {
    CHud::InitialiseExtensions();
    OsEvent::InitialiseExtensions();

    auto imGui = CImGuiExtension::Get();
    imGui->Install();
    imGui->Initialise();
}
