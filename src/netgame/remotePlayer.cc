// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/netgame/remotePlayer.hh>
#include <luna/core/helpers.hh>
#include <luna/game/pad.hh>
#include <luna/netcode/core.hh>
#include <luna/netgame/main.hh>
#include <luna/netcode/core.hh>
#include <cstring>

using namespace luna::core;
using namespace luna::game;
using namespace luna::netgame;
using namespace luna::netcode;

void RemotePlayer::registerNetworkCode() {
    g_client->registerHandlerForPacket(new FootSync());
    g_client->registerHandlerForPacket(new SetPlayerSkin());
    g_client->registerHandlerForPacket(new ServerJoin());
    g_client->registerHandlerForPacket(new ServerQuit());
    g_client->registerHandlerForPacket(new WorldPlayerAdd());
    g_client->registerHandlerForPacket(new WorldPlayerRemove());
}

RemotePlayer* RemotePlayer::create(int id) {
    auto player = reinterpret_cast<RemotePlayer*>(Ped::operator new(sizeof (RemotePlayer)));
    player->initialise(id);

    return player;
}

void RemotePlayer::release(RemotePlayer* player) {
    player->deinitialise();
    Ped::operator delete(player);
}

RemotePlayer* RemotePlayer::initialise(int id) {
    static PlayerPedVtable* vtable = nullptr;

    PlayerPed::initialise(id, false);

    if (vtable == nullptr) {
        vtable = new PlayerPedVtable();
        memcpy(vtable, g_gameAddress + 0x679278, sizeof (PlayerPedVtable));

        vtable->processControl = getMethodPointer2(&RemotePlayer::processControl);
    }
    
    m_vtable = vtable;
    m_pedType = PEDTYPE_PLAYER2;

    remotePad.id = id;

    return this;
}

void RemotePlayer::processControl() {
    Pad::setRemotePadAsCurrent(&remotePad);
    PlayerPed::processControl();
}

void RemotePlayer::setRemoteData(FootSync& sync) {
    remotePad.keys = sync.keys;
    remotePad.leftRight = sync.leftRight;
    remotePad.upDown = sync.upDown;

    setHealth(sync.health);
    armour = sync.armour;
    currentVelocity = sync.velocity;

    Vector distance = sync.position.absoluteOffset(m_matrix->position);

    if (distance.x > 10.0 || distance.y > 10.0)
        currentVelocity = sync.position.offset(m_matrix->position);
}
