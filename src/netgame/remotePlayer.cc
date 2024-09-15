// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/remotePlayer.hh>
#include <luna/netgame/remotePad.hh>
#include <luna/game/pad.hh>
#include <luna/game/playerPed.hh>
#include <luna/game/world.hh>
#include <luna/netcode/core.hh>
#include <luna/serde/bitSerde.hh>

using namespace luna;
using namespace luna::core;
using namespace luna::game;
using namespace luna::net;
using namespace luna::netgame;
using namespace luna::serde;

void RemotePlayerManager::processServerJoin(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize) {
    BitDeserialiser deserialiser(rawData, bitSize);

    netcode::ServerJoin data;
    data.deserialise(deserialiser);

    PlayerPed::setupPlayerPed(data.playerID + 2);
    World::getPlayerPed(data.playerID + 2)->matrix() = World::getPlayerPed()->matrix();
}

void RemotePlayerManager::processFootSync(void* userData, Client& client, uint8_t const* rawData, size_t bitSize) {
    RemotePlayerManager* manager = static_cast<RemotePlayerManager*>(userData);

    BitDeserialiser deserialiser(rawData, bitSize);

    netcode::FootSync data;
    data.deserialise(deserialiser);

    CRemotePlayer* player = manager->getPlayer(data.playerID);
    player->syncFoot(data);
}

void RemotePlayerManager::install() {
    Luna::s_instance->client->registerHandlerForPacket(netcode::FootSync::PACKET_ID, { processFootSync, static_cast<void*>(this) });
    Luna::s_instance->client->registerHandlerForRPC(netcode::ServerJoin::PACKET_ID, { processServerJoin, static_cast<void*>(this) });

    Luna::s_instance->remotePlayer = this;
}

CRemotePlayer* RemotePlayerManager::getPlayer(int id) {
    return static_cast<CRemotePlayer*>(
        World::getPlayerPed(id + 2)
    );
}

void CRemotePlayer::syncFoot(netcode::FootSync& data) {
    m_remotePad.leftRight = data.leftRight;
    m_remotePad.upDown = data.upDown;
    m_remotePad.keys = data.keys;

    if (data.health != m_health)
        setHealth(data.health);

    if (data.armour != m_armour)
        m_armour = data.armour;
}

void CRemotePlayer::checkPosition(Vector expPosition) {
    Vector& position = matrix().position;
    Vector offset = position.absoluteOffset(expPosition);

    if (offset.x < 2.0f && offset.y < 2.0f && offset.z < 2.0f) {
        m_currentVelocity = m_currentVelocity.offset(position);
        m_currentVelocity *= Vector(0.1f, 0.1f, 0.1f);
    } else {
        position = expPosition;
    }
}
