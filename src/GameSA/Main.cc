// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Memory.hh>
#include <Luna/GameSA/Game.hh>
#include <Luna/GameSA/Hud.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/OsWrapper.hh>
#include <Luna/GameSA/Pad.hh>
#include <Luna/GameSA/PlayerPed.hh>
#include <Luna/GameSA/RW.hh>
#include <Luna/GameSA/World.hh>
#include <spdlog/spdlog.h>
#include <dlfcn.h>

using namespace Luna;
using namespace Luna::Core;
using namespace Luna::GameSA;

uint8_t* GameSA::GameAddress = nullptr;

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

void GameSA::InitialiseMods() {
    GetGameAddress();
    RemoveWriteProtections();

    CRenderWare::LoadLibrary();
}

void GameSA::InstallMods() {
    CGame::InstallMods();
    CHud::InstallMods();
    OsEvent::InstallMods();
    CPad::InstallMods();
    CPlayerPed::InstallMods();
    CWorld::InstallMods();
}
