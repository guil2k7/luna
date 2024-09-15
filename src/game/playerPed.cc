// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/playerPed.hh>
#include <luna/game/main.hh>
#include <luna/game/pad.hh>
#include <luna/game/world.hh>

using namespace luna::core;
using namespace luna::game;

static struct {
    void (LUNA_STDCALL* setupPlayerPed)(int);
    PlayerPed* (LUNA_THISCALL* constructor)(PlayerPed*, int, bool);
    PlayerInfo* (LUNA_THISCALL* getPlayerInfoForThisPlayerPed)(PlayerPed*);
    void (LUNA_THISCALL* processControl)(PlayerPed*);
} trampoline;

void PlayerPed::installMods() {
    trampoline.setupPlayerPed = takeAndReplace(GAME_ADDRESS + 0x67E7AC, PlayerPed::setupPlayerPed);

    trampoline.constructor = takeAndReplace(
        GAME_ADDRESS + 0x67F260,
        getMethodPointer(&PlayerPed::constructor)
    );

    // vtable
    takeAndReplace(
        GAME_ADDRESS + 0x68560C,
        getMethodPointer(&PlayerPed::constructor)
    );

    trampoline.getPlayerInfoForThisPlayerPed = takeAndReplace(
        GAME_ADDRESS + 0x680068,
        getMethodPointer(&PlayerPed::playerInfo)
    );

    // vtable
    trampoline.processControl = takeAndReplace(
        GAME_ADDRESS + 0x6792A4,
        getMethodPointer(&PlayerPed::processControl)
    );
}

PlayerPed* PlayerPed::create(int id, bool groupCreated) {
    PlayerPed* instance = reinterpret_cast<PlayerPed*>(::operator new(sizeof(PlayerPed)));
    instance->constructor(id, groupCreated);

    return instance;
}

void PlayerPed::destroy(PlayerPed* instance) {
    callMethod<void>(GAME_ADDRESS + 0x4D3901, instance);
    ::operator delete(instance);
}

void PlayerPed::setupPlayerPed(int id) {
    trampoline.setupPlayerPed(id);

    if (id > 1) {
        PlayerPed* player = World::getPlayerPed(id);
        player->m_pedType = PEDTYPE_PLAYER2;
    }
}

PlayerPed* PlayerPed::constructor(int id, bool groupCreated) {
    trampoline.constructor(this, id, groupCreated);

    m_id = id;
    m_remotePad.id = id;

    return this;
}

PlayerInfo* PlayerPed::playerInfo() {
    return &World::players()[m_id];
}

void PlayerPed::processControl() {
    Pad::setRemotePadAsCurrent(&m_remotePad);

    trampoline.processControl(this);

    m_remotePad.clearKeys();
}
