// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/playerPed.hh>
#include <luna/game/main.hh>
#include <luna/game/pad.hh>
#include <luna/game/world.hh>
#include <luna/netgame/localPlayer.hh>

using namespace luna::core;
using namespace luna::game;

static struct {
    void (LUNA_STDCALL* setupPlayerPed)(int);
    PlayerPed* (LUNA_THISCALL* constructor)(PlayerPed*, int, bool);
    PlayerInfo* (LUNA_THISCALL* getPlayerInfoForThisPlayerPed)(PlayerPed*);
} g_trampoline;

void PlayerPed::installMods() {
    g_trampoline.setupPlayerPed = takeAndReplace(
        g_gameAddress + 0x67E7AC,
        PlayerPed::setupPlayerPed
    );

    g_trampoline.constructor = takeAndReplace(
        g_gameAddress + 0x67F260,
        getMethodPointer(&PlayerPed::initialise)
    );

    takeAndReplace(
        g_gameAddress + 0x68560C,
        getMethodPointer(&PlayerPed::initialise)
    );

    g_trampoline.getPlayerInfoForThisPlayerPed = takeAndReplace(
        g_gameAddress + 0x680068,
        getMethodPointer(&PlayerPed::playerInfo)
    );
}

void PlayerPed::setupPlayerPed(int id) {
    PlayerPed* player;

    if (id == 0) {
        auto localPlayer = reinterpret_cast<netgame::LocalPlayer*>(
            Ped::operator new(sizeof (netgame::LocalPlayer)));

        localPlayer->initialise(id, false);
        player = localPlayer;
    }
    else {
        player = static_cast<PlayerPed*>(Ped::operator new(sizeof (PlayerPed)));
        player->initialise(id, false);
    }

    PlayerInfo& info = World::players()[id];
    info.ped = player;
    info.playerState = 0;

    if (id >= 1)
        player->m_pedType = PEDTYPE_PLAYER2;

    if (player->m_matrix == nullptr) {
        player->m_transform.heading = 0.0f;
    }
    else {
        player->m_matrix->resetOrientation();
    }

    World::add(player);
}

PlayerPed* PlayerPed::initialise(int id, bool forReply) {
    g_trampoline.constructor(this, id, forReply);

    m_id = id;

    return this;
}

PlayerInfo* PlayerPed::playerInfo() {
    return &World::players()[m_id];
}
