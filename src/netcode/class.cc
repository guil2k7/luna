// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netcode/class.hh>
#include <luna/game/pad.hh>
#include <luna/game/playerPed.hh>
#include <luna/net/client.hh>
#include <luna/netgame/spawnScreen.hh>

using namespace luna::game;
using namespace luna::net;
using namespace luna::netcode;
using namespace luna::netgame;
using namespace luna::serde;

void RequestClass::serialise(ISerialiser& serialiser) const {
    serialiser.serialiseU16(classID);
}

void RequestClassResponse::deserialise(IDeserialiser& deserialiser) {
    selectable = deserialiser.deserialiseU8();
    teamID = deserialiser.deserialiseU8();
    modelID = deserialiser.deserialiseU32();
    deserialiser.deserialise(spawn);

    // Unknown.
    deserialiser.deserialiseU8();

    zAngle = deserialiser.deserialiseF32();

    for (size_t i = 0; i < 3; ++i)
        weapons[i] = deserialiser.deserialiseU32();

    for (size_t i = 0; i < 3; ++i)
        ammos[i] = deserialiser.deserialiseU32();
}

bool RequestClassResponse::execute(Client& client) {
    // TODO
    return false;
}

void RequestSpawnResponse::deserialise(IDeserialiser& deserialiser) {
    allow = deserialiser.deserialiseU8();
}

bool RequestSpawnResponse::execute(Client& client) {
    if (allow > 0)
        onSpawn(client);
    else
        onSpawnFail(client);

    return false;
}

void RequestSpawnResponse::onSpawn(Client& client) {
    Pad* pad = Pad::mainPlayerPad();
    pad->disablePlayerControls = 0;

    // Confirm spawn.
    SendSpawn data;
    client.send(data, RakNet::HIGH_PRIORITY, RakNet::RELIABLE_SEQUENCED);

    SpawnScreen::s_instance->hide();
}

void RequestSpawnResponse::onSpawnFail(Client& client) {
    // TODO
}

void RequestSpawn::serialise(ISerialiser& serialiser) const {

}

void SendSpawn::serialise(ISerialiser& serialiser) const {

}
