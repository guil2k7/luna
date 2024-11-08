// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/netcode/core.hh>
#include <luna/game/pad.hh>
#include <luna/game/world.hh>
#include <luna/net/client.hh>
#include <luna/netgame/classManager.hh>
#include <luna/netgame/localPlayer.hh>
#include <luna/netgame/remotePlayer.hh>
#include <luna/netgame/definitions.hh>

using namespace luna::game;
using namespace luna::net;
using namespace luna::netcode;
using namespace luna::netgame;
using namespace luna::serde;

void StatsUpdate::serialise(ISerialiser& serialiser) const {
    serialiser.serialiseI32(money);
    serialiser.serialiseI32(drunkLevel);
}

void FootSync::serialise(ISerialiser& serialiser) const {
    serialiser.serialiseU16(leftRight);
    serialiser.serialiseU16(upDown);
    serialiser.serialiseU16(keys);
    serialiser.serialise(position);
    serialiser.serialise(rotation);
    serialiser.serialiseU8(health);
    serialiser.serialiseU8(armour);
    serialiser.serialiseU8(weaponAdditionalKey);
    serialiser.serialiseU8(specialAction);
    serialiser.serialise(velocity);
    serialiser.serialise(surfingOffset);
    serialiser.serialiseU16(surfingID);
    serialiser.serialiseU16(animationID);
    serialiser.serialiseU16(animationFlags);
}

void FootSync::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();

    if (deserialiser.deserialiseBool())
        leftRight = deserialiser.deserialiseI16();
    else
        leftRight = 0;

    if (deserialiser.deserialiseBool())
        upDown = deserialiser.deserialiseI16();
    else
        upDown = 0;

    keys = deserialiser.deserialiseU16();

    deserialiser.deserialise(position);

    deserialiser.deserialiseNormQuat(
        rotation.w,
        rotation.x,
        rotation.y,
        rotation.z);

    uint8_t healthArmourCompressed = deserialiser.deserialiseU8();
    uint8_t healthCompressed = (healthArmourCompressed >> 4) & 0xF;
    uint8_t armourCompressed = healthArmourCompressed & 0xF;

    if (healthCompressed == 0xF)
        health = 100.0f;
    else
        health = static_cast<float>(healthCompressed * 7);

    if (armourCompressed == 0xF)
        armour = 100.0f;
    else
        armour = static_cast<float>(armourCompressed * 7);

    weaponAdditionalKey = deserialiser.deserialiseU8();
    specialAction = deserialiser.deserialiseU8();

    deserialiser.deserialiseCompressedVec(
        velocity.x,
        velocity.y,
        velocity.z);

    if (deserialiser.deserialiseBool()) {
        surfingID = deserialiser.deserialiseU16();
        deserialiser.deserialise(surfingOffset);
    } else {
        surfingID = 0xFFFF;
    }
}

void SetPlayerFacingAngle::deserialise(IDeserialiser& deserialiser) {
    angle = deserialiser.deserialiseF32();
}

void ServerJoin::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    color = deserialiser.deserialiseU32();
    isNpc = deserialiser.deserialiseU8();

    uint8_t playerNameLength = deserialiser.deserialiseU8();
    playerName.resize(playerNameLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(playerName.data()), playerNameLength);
}

void ServerQuit::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    reason = static_cast<ServerQuitReason>(deserialiser.deserialiseU8());
}

void InitGame::deserialise(IDeserialiser& deserialiser) {
    zoneNames = deserialiser.deserialiseBool();
    useCjWalk = deserialiser.deserialiseBool();
    allowWeapons = deserialiser.deserialiseBool();
    limitGlobalChatRadius = deserialiser.deserialiseBool();
    globalChatRadius = deserialiser.deserialiseF32();
    stuntBonus = deserialiser.deserialiseBool();
    nameTagDistance = deserialiser.deserialiseF32();
    disableEnterExits = deserialiser.deserialiseBool();
    nameTagLos = deserialiser.deserialiseBool();
    manualVehEngineAndLights = deserialiser.deserialiseBool();
    spawnsAvailable = deserialiser.deserialiseU32();
    playerID = deserialiser.deserialiseU16();
    showNameTags = deserialiser.deserialiseBool();
    showPlayerMarkers = deserialiser.deserialiseU32();
    worldTime = deserialiser.deserialiseU8();
    weather = deserialiser.deserialiseU8();
    gravity = deserialiser.deserialiseF32();
    lanMode = deserialiser.deserialiseBool();
    deathDropMoney = deserialiser.deserialiseU32();
    instagib = deserialiser.deserialiseBool();
    onfootRate = deserialiser.deserialiseU32();
    inCarRate = deserialiser.deserialiseU32();
    weaponRate = deserialiser.deserialiseU32();
    multiplier = deserialiser.deserialiseU32();
    lagCompMode = deserialiser.deserialiseU32();

    uint8_t hostNameLength = deserialiser.deserialiseU8();

    hostName.resize(hostNameLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(hostName.data()), hostNameLength);

    deserialiser.skipBytes(212); // VehicleModels
    vehicleFriendlyFire = deserialiser.deserialiseU32();
}

void UpdateScoresAndPings::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    score = deserialiser.deserialiseI32();
    ping = deserialiser.deserialiseU32();
}

void ClientCheck::deserialise(IDeserialiser& deserialiser) {
    type = deserialiser.deserialiseU8();
    address = deserialiser.deserialiseU32();
    offset = deserialiser.deserialiseU16();
    count = deserialiser.deserialiseU16();
}

void GameModeRestart::deserialise(IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

void ApplyPlayerAnimation::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();

    uint8_t animLibLength = deserialiser.deserialiseU8();
    animLib.resize(animLibLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(animLib.data()), animLibLength);

    uint8_t animNameLength = deserialiser.deserialiseU8();
    animName.resize(animNameLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(animName.data()), animNameLength);

    delta = deserialiser.deserialiseF32();
    loop = deserialiser.deserialiseBool();
    lockx = deserialiser.deserialiseBool();
    locky = deserialiser.deserialiseBool();
    freeze = deserialiser.deserialiseBool();
    time = deserialiser.deserialiseU32();
}

void ClearPlayerAnimation::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
}

void DeathBroadcast::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
}

void SetPlayerName::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    uint8_t nameLength = deserialiser.deserialiseU8();

    name.resize(nameLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(name.data()), nameLength);

    success = deserialiser.deserialiseU8();
}

void SetPlayerPos::deserialise(IDeserialiser& deserialiser) {
    deserialiser.deserialise(position);
}

void SetPlayerPosFindZ::deserialise(IDeserialiser& deserialiser) {
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

void SetPlayerSkillLevel::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    skillID = deserialiser.deserialiseU32();
    level = deserialiser.deserialiseU16();
}

void SetPlayerSkin::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU32();
    skinID = deserialiser.deserialiseU32();
}

void SetPlayerTime::deserialise(IDeserialiser& deserialiser) {
    hour = deserialiser.deserialiseU8();
    minute = deserialiser.deserialiseU8();
}

void SetPlayerSpecialAction::deserialise(IDeserialiser& deserialiser) {
    actionID = deserialiser.deserialiseU8();
}

void SetWeather::deserialise(IDeserialiser& deserialiser) {
    weatherID = deserialiser.deserialiseU8();
}

void SetWorldBounds::deserialise(IDeserialiser& deserialiser) {
    maxX = deserialiser.deserialiseF32();
    minX = deserialiser.deserialiseF32();
    maxY = deserialiser.deserialiseF32();
    minY = deserialiser.deserialiseF32();
}

void SetPlayerVelocity::deserialise(IDeserialiser& deserialiser) {
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

void TogglePlayerControllable::deserialise(IDeserialiser& deserialiser) {
    moveable = deserialiser.deserialiseU8();
}

void TogglePlayerSpectating::deserialise(IDeserialiser& deserialiser) {
    spectating = deserialiser.deserialiseU32();
}

void ToggleClock::deserialise(IDeserialiser& deserialiser) {
    toggle = deserialiser.deserialiseU8();
}

void SetPlayerTeam::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    teamID = deserialiser.deserialiseU8();
}

void PlaySound::deserialise(IDeserialiser& deserialiser) {
    soundID = deserialiser.deserialiseU32();
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

void GivePlayerMoney::deserialise(IDeserialiser& deserialiser) {
    money = deserialiser.deserialiseI32();
}

void ResetPlayerMoney::deserialise(IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

void ResetPlayerWeapons::deserialise(IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

void GivePlayerWeapon::deserialise(IDeserialiser& deserialiser) {
    weaponID = deserialiser.deserialiseU32();
    bullets = deserialiser.deserialiseU32();
}

void PlayAudioStream::deserialise(IDeserialiser& deserialiser) {
    uint8_t urlLength = deserialiser.deserialiseU8();

    url.resize(urlLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(url.data()), urlLength);
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
    radius = deserialiser.deserialiseF32();
    usePos = deserialiser.deserialiseU8();
}

void PlayCrimeReport::deserialise(IDeserialiser& deserialiser) {
    suspectID = deserialiser.deserialiseU16();
    inVehicle = deserialiser.deserialiseU32();
    vehicleModel = deserialiser.deserialiseU32();
    vehicleColor = deserialiser.deserialiseU32();
    crime = deserialiser.deserialiseU32();
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

void StopAudioStream::deserialise(IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

void SetPlayerHealth::deserialise(IDeserialiser& deserialiser) {
    health = deserialiser.deserialiseF32();
}

void SetPlayerArmour::deserialise(IDeserialiser& deserialiser) {
    armour = deserialiser.deserialiseF32();
}

void SetWeaponAmmo::deserialise(IDeserialiser& deserialiser) {
    weaponID = deserialiser.deserialiseU8();
    ammo = deserialiser.deserialiseU16();
}

void SetCameraBehind::deserialise(IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

void SetArmedWeapon::deserialise(IDeserialiser& deserialiser) {
    weaponID = deserialiser.deserialiseU32();
}

void WorldPlayerAdd::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    team = deserialiser.deserialiseU8();
    skinID = deserialiser.deserialiseU32();
    posX = deserialiser.deserialiseF32();
    posY = deserialiser.deserialiseF32();
    posZ = deserialiser.deserialiseF32();
    facingAngle = deserialiser.deserialiseF32();
    playerColor = deserialiser.deserialiseU32();
    fightingStyle = deserialiser.deserialiseU8();
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(skillLevel), 22);
}

void WorldPlayerRemove::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
}

void InterpolateCamera::deserialise(IDeserialiser& deserialiser) {
    posSet = deserialiser.deserialiseBool();
    fromPosX = deserialiser.deserialiseF32();
    fromPosY = deserialiser.deserialiseF32();
    fromPosZ = deserialiser.deserialiseF32();
    toPosX = deserialiser.deserialiseF32();
    toPosY = deserialiser.deserialiseF32();
    toPosZ = deserialiser.deserialiseF32();
    time = deserialiser.deserialiseU32();
    cutType = deserialiser.deserialiseU8();
}

void CreateExplosion::deserialise(IDeserialiser& deserialiser) {
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
    type = deserialiser.deserialiseU32();
    radius = deserialiser.deserialiseF32();
}

void SendDeathMessage::deserialise(IDeserialiser& deserialiser) {
    killerID = deserialiser.deserialiseU16();
    playerID = deserialiser.deserialiseU16();
    reason = deserialiser.deserialiseU8();
}

void SendGameTimeUpdate::deserialise(IDeserialiser& deserialiser) {
    time = deserialiser.deserialiseI32();
}

void SendClientMessage::deserialise(IDeserialiser& deserialiser) {
    color = deserialiser.deserialiseU32();
    uint32_t messageLength = deserialiser.deserialiseU32();

    message.resize(messageLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(message.data()), messageLength);
}

void SetShopName::deserialise(IDeserialiser& deserialiser) {
    uint32_t length = deserialiser.deserialiseU32();

    name.resize(length);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(name.data()), length);
}

void SetPlayerDrunkLevel::deserialise(IDeserialiser& deserialiser) {
    drunkLevel = deserialiser.deserialiseI32();
}

void SetPlayerFightingStyle::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    fightStyle = deserialiser.deserialiseU8();
}

void SetInterior::deserialise(IDeserialiser& deserialiser) {
    interiorID = deserialiser.deserialiseU8();
}

void SetPlayerColor::deserialise(IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    color = deserialiser.deserialiseU32();
}

void ForceClassSelection::deserialise(IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

void ToggleWidescreen::deserialise(IDeserialiser& deserialiser) {
    enable = deserialiser.deserialiseU8();
}

void SetPlayerWantedLevel::deserialise(IDeserialiser& deserialiser) {
    wantedLevel = deserialiser.deserialiseU8();
}

void SetCameraPos::deserialise(IDeserialiser& deserialiser) {
    lookPosX = deserialiser.deserialiseF32();
    lookPosY = deserialiser.deserialiseF32();
    lookPosZ = deserialiser.deserialiseF32();
}

void SetCameraLookAt::deserialise(IDeserialiser& deserialiser) {
    lookPosX = deserialiser.deserialiseF32();
    lookPosY = deserialiser.deserialiseF32();
    lookPosZ = deserialiser.deserialiseF32();
    cutType = deserialiser.deserialiseU8();
}

/* ---------------------------------------------------------------- */

bool InitGame::execute(net::Client& client) {
    handleClassSelection(client);

    return false;
}

void InitGame::handleClassSelection(Client& client) {
    LocalPlayer* player = LocalPlayer::s_instance;
    Pad* pad = Pad::mainPlayerPad();

    player->setHealth(100.0f);
    pad->disablePlayerControls = 1;

    ClassManager::s_instance->numberOfClasses = spawnsAvailable;
    ClassManager::s_instance->currentClassID = 0;
    ClassManager::s_instance->requestCurrentClass();
    ClassManager::s_instance->show();
}

bool SetPlayerPos::execute(Client& client) {
    LocalPlayer::s_instance->matrix()->position = position;

    return false;
}

bool SetPlayerSkin::execute(Client& client) {
    if (playerID == client.ourID()) {
        LocalPlayer::s_instance->setModelIndex(skinID);
    } else {
        LUNA_ASSERT(playerID < MAX_PLAYERS);

        RemotePlayer* player = static_cast<RemotePlayer*>(
            World::players()[playerID + 2].ped);

        player->setModelIndex(skinID);
    }

    return false;
}

bool FootSync::execute(Client& client) {
    LUNA_ASSERT(playerID < MAX_PLAYERS);

    RemotePlayer* player = static_cast<RemotePlayer*>(
        World::players()[playerID + 2].ped);

    player->setRemoteData(*this);

    return false;
}

bool SetPlayerFacingAngle::execute(Client& client) {
    LocalPlayer::s_instance->matrix()->setRotateZOnly(angle);

    return false;
}

bool SetPlayerHealth::execute(Client& client) {
    LocalPlayer::s_instance->setHealth(health);

    return false;
}

bool SetPlayerArmour::execute(Client& client) {
    LocalPlayer::s_instance->armour = armour;

    return false;
}

bool ServerJoin::execute(Client& client) {
    LUNA_ASSERT(playerID < MAX_PLAYERS);

    RemotePlayer* player = RemotePlayer::create(playerID + 2);

    PlayerInfo* info = player->info();
    info->ped = player;
    info->playerState = 0;

    return false;
}

bool ServerQuit::execute(Client& client) {
    LUNA_ASSERT(playerID < MAX_PLAYERS);

    PlayerInfo* info = &World::players()[playerID + 2];
    RemotePlayer* player = static_cast<RemotePlayer*>(info->ped);

    World::remove(player);
    RemotePlayer::release(player);

    info->clear();

    return false;
}

bool SetPlayerVelocity::execute(Client& client) {
    LocalPlayer::s_instance->currentVelocity = Vector(x, y, z);

    return false;
}

bool TogglePlayerControllable::execute(Client& client) {
    Pad* pad = Pad::mainPlayerPad();

    pad->disablePlayerControls = !moveable;
    pad->disablePlayerEnterCar = !moveable;
    pad->disablePlayerDuck = !moveable;
    pad->disablePlayerFireWeapon = !moveable;
    pad->disablePlayerFireWeaponWithL1 = !moveable;
    pad->disablePlayerCycleWeapon = !moveable;
    pad->disablePlayerJump = !moveable;

    return false;
}

bool WorldPlayerAdd::execute(Client& client) {
    LUNA_ASSERT(playerID < MAX_PLAYERS);

    PlayerInfo* info = &World::players()[playerID + 2];
    PlayerPed* ped = info->ped;

    if (ped == nullptr)
        return false;

    ped->matrix()->position = Vector(posX, posY, posZ);
    ped->matrix()->setRotateZOnly(facingAngle);

    World::add(info->ped);

    return false;
}

bool WorldPlayerRemove::execute(Client& client) {
    LUNA_ASSERT(playerID < MAX_PLAYERS);

    PlayerInfo* info = &World::players()[playerID + 2];

    if (info->ped != nullptr)
        World::remove(info->ped);

    return false;
}
