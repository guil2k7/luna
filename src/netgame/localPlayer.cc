// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/localPlayer.hh>
#include <luna/game/pad.hh>
#include <luna/game/playerPed.hh>
#include <luna/game/world.hh>
#include <luna/netcode/core.hh>
#include <luna/serde/bitSerde.hh>

using namespace luna;
using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;
using namespace luna::net;
using namespace luna::serde;

void LocalPlayerManager::processSetPlayerPos(void* userData, Client& client, uint8_t const* rawData, size_t bitSize) {
    BitDeserialiser deserialiser(rawData, bitSize);

    netcode::SetPlayerPos data;
    data.deserialise(deserialiser);

    World::getPlayerPed()->matrix().position = data.position;
}

void LocalPlayerManager::process() {
    auto now = std::chrono::steady_clock::now();

    if (now > m_lastFootSync + footSyncRate) {
        sendFootSync();
        m_lastFootSync = now;
    }
}

void LocalPlayerManager::sendFootSync() {
    PlayerPed* player = World::getPlayerPed();
    Pad* pad = Pad::mainPlayerPad();

    netcode::FootSync data;
    data.leftRight = pad->newState.leftStickX;
    data.upDown = pad->newState.leftStickY;
    data.position = player->matrix().position;
    data.health = player->health();
    data.armour = player->armour();
    data.velocity = player->currentVelocity();

    Luna::s_instance->client->send(data, RakNet::DEFAULT_PRIORITY, RakNet::UNRELIABLE_SEQUENCED);

    // serialiser.SerialiseU16(LeftRight);
    // serialiser.SerialiseU16(UpDown);
    // serialiser.SerialiseU16(Keys);
    // serialiser.Serialise(Position);
    // serialiser.Serialise(Rotation);
    // serialiser.SerialiseU8(Health);
    // serialiser.SerialiseU8(Armour);
    // serialiser.SerialiseU8(WeaponAdditionalKey);
    // serialiser.SerialiseU8(SpecialAction);
    // serialiser.Serialise(Velocity);
    // serialiser.Serialise(SurfingOffset);
    // serialiser.SerialiseU16(SurfingID);
    // serialiser.SerialiseU16(AnimationID);
    // serialiser.SerialiseU16(AnimationFlags);
}

void LocalPlayerManager::install() {
    Luna::s_instance->client->registerHandlerForRPC(netcode::SetPlayerPos::PACKET_ID, { processSetPlayerPos, static_cast<void*>(this) });

    Luna::s_instance->localPlayer = this;
}
