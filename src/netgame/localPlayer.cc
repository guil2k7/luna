// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/netgame/localPlayer.hh>
#include <luna/core/helpers.hh>
#include <luna/game/pad.hh>
#include <luna/netcode/core.hh>
#include <luna/netgame/main.hh>
#include <cstring>

using namespace luna::core;
using namespace luna::game;
using namespace luna::netgame;
using namespace luna::netcode;

LocalPlayer* LocalPlayer::s_instance = nullptr;

void LocalPlayer::registerNetworkCode() {
    g_client->registerHandlerForPacket(new SetPlayerPos());
    g_client->registerHandlerForPacket(new SetPlayerFacingAngle());
    g_client->registerHandlerForPacket(new SetPlayerHealth());
    g_client->registerHandlerForPacket(new SetPlayerArmour());
    g_client->registerHandlerForPacket(new SetPlayerVelocity());
    g_client->registerHandlerForPacket(new TogglePlayerControllable());
}

LocalPlayer* LocalPlayer::create(int id) {
    auto player = reinterpret_cast<LocalPlayer*>(Ped::operator new(sizeof (LocalPlayer)));
    player->initialise(id);

    return player;
}

void LocalPlayer::release(LocalPlayer* player) {
    player->deinitialise();
    Ped::operator delete(player);
}

LocalPlayer* LocalPlayer::initialise(int id) {
    static PlayerPedVtable* vtable = nullptr;

    PlayerPed::initialise(id, false);

    if (vtable == nullptr) {
        vtable = new PlayerPedVtable();
        memcpy(vtable, g_gameAddress + 0x679278, sizeof (PlayerPedVtable));

        vtable->processControl = getMethodPointer2(&LocalPlayer::processControl);
    }

    m_vtable = vtable;
    m_remotePad.id = id;
    m_pedType = PEDTYPE_PLAYER1;

    return this;
}

void LocalPlayer::processControl() {
    Pad::setRemotePadAsCurrent(&m_remotePad);
    PlayerPed::processControl();

    auto now = std::chrono::steady_clock::now();

    if (now >= m_lastSync + std::chrono::milliseconds(30)) {
        FootSync footSync;
        footSync.leftRight = m_remotePad.leftRight;
        footSync.upDown = m_remotePad.upDown;
        footSync.keys = m_remotePad.keys;
        footSync.weaponAdditionalKey = 0;
        footSync.specialAction = 0;
        footSync.position = matrix()->position;
        footSync.rotation.setFromMatrix(*matrix());
        footSync.health = health();
        footSync.armour = armour;
        footSync.velocity = currentVelocity;
        footSync.animationID = 0;
        footSync.animationFlags = 0;
        footSync.surfingID = 0;

        g_client->send(footSync, RakNet::LOW_PRIORITY, RakNet::UNRELIABLE_SEQUENCED);
        m_lastSync = now;
    }
}
