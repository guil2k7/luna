// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/playerPed.hh>
#include <luna/game/main.hh>
#include <luna/game/pad.hh>
#include <luna/game/world.hh>
#include <luna/netgame/localPlayer.hh>
#include <luna/netgame/remotePlayer.hh>
#include <luna/core/exceptions.hh>

using namespace luna::core;
using namespace luna::game;
using namespace luna::netgame;

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
        getMethodPointer(&PlayerPed::info)
    );
}


// PlayerPed* PlayerPed::create(int id, bool forReply) {
//     auto player = reinterpret_cast<PlayerPed*>(Ped::operator new(sizeof (PlayerPed)));
//     player->initialise(id, forReply);

//     return player;
// }

// void PlayerPed::release(PlayerPed* player) {
//     player->deinitialise();
//     Ped::operator delete(player);
// }

PlayerPed* PlayerPed::initialise(int id, bool forReply) {
    g_trampoline.constructor(this, id, forReply);

    m_id = id;

    return this;
}

void PlayerPed::setupPlayerPed(int id) {
    PlayerPed* player;

    if (id == 0) {
        LocalPlayer::s_instance = LocalPlayer::create(id);
        player = LocalPlayer::s_instance;
    } else {
        player = RemotePlayer::create(id);
    }

    PlayerInfo* info = player->info();
    info->ped = player;
    info->playerState = 0;

    if (player->m_matrix == nullptr)
        player->m_transform.heading = 0.0f;
    else
        player->m_matrix->resetOrientation();

    World::add(player);
}
