// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/main.hh>
#include <luna/game/game.hh>
#include <luna/game/hud.hh>
#include <luna/game/osWrapper.hh>
#include <luna/game/pad.hh>
#include <luna/game/playerPed.hh>
#include <luna/game/rw.hh>
#include <luna/game/world.hh>
#include <luna/core/memory.hh>
#include <dlfcn.h>
#include <spdlog/spdlog.h>

using namespace luna;
using namespace luna::core;
using namespace luna::game;

uint8_t* game::g_gameAddress = nullptr;

static void getGameAddress() {
    static void* libGTASAHandle;

    libGTASAHandle = dlopen("libGTASA.so", RTLD_NOLOAD);

    if (libGTASAHandle == nullptr)
        spdlog::error("'libGTASA.so' not found!");

    // Calculate the game address.
    g_gameAddress
        = reinterpret_cast<uint8_t*>(dlsym(libGTASAHandle, "RwEngineInstance"))
        - 0x6CCD38;
}

static void removeWriteProtections() {
    // .data
    virtualModifyProtection(g_gameAddress + 0x67A000, 0x6B2D84 - 0x67A000, PROTECTION_READ | PROTECTION_WRITE);

    // .got
    virtualModifyProtection(g_gameAddress + 0x66E4D0, 0x679FF3 - 0x66E4D0, PROTECTION_READ | PROTECTION_WRITE);

    // .bss
    virtualModifyProtection(g_gameAddress + 0x6B2DC0, 0xA98FEF - 0x6B2DC0, PROTECTION_READ | PROTECTION_WRITE);

    // .text
    virtualModifyProtection(g_gameAddress + 0x1A1780, 0x5E84E7 - 0x1A1780, PROTECTION_READ | PROTECTION_WRITE | PROTECTION_EXEC);
}

void game::initialiseMods() {
    getGameAddress();
    removeWriteProtections();

    RenderWare::loadLibrary();
}

void game::installMods() {
    Game::installMods();
    Hud::installMods();
    OsEvent::installMods();
    Pad::installMods();
    PlayerPed::installMods();
    World::installMods();
}
