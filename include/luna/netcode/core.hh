// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../game/quaternion.hh"
#include "../game/vector.hh"
#include "../net/packet.hh"
#include "../serde/serde.hh"
#include <string>
#include <cstdint>

namespace luna::netcode {

enum ServerQuitReason : uint8_t {
    SERVER_QUIT_REASON_TIMEOUT,
    SERVER_QUIT_REASON_QUIT,
    SERVER_QUIT_REASON_KICK_OR_BAN,
};

struct StatsUpdate final : public serde::ISerialisable {
    LUNA_DEFINE_PACKET(false, 205)

    void serialise(serde::ISerialiser& serialiser) const;

    int32_t money;
    int32_t drunkLevel;
};

struct FootSync final : public serde::ISerialisable, serde::IDeserialisable {
    LUNA_DEFINE_PACKET(false, 207)

    void serialise(serde::ISerialiser& serialiser) const;
    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint16_t leftRight;
    uint16_t upDown;
    uint16_t keys;

    union {
        uint8_t weaponAdditionalKey;
        struct {
            uint8_t weapon : 6;
            uint8_t additionalKey : 2;
        };
    };

    uint8_t specialAction;
    game::Vector position;
    game::Quaternion rotation;
    float health;
    float armour;
    game::Vector velocity;
    uint16_t animationID;
    uint16_t animationFlags;
    uint16_t surfingID;
    game::Vector surfingOffset;
};

struct SetPlayerFacingAngle final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 19)

    void deserialise(serde::IDeserialiser& deserialiser);

    float angle;
};

struct ServerJoin final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 137)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint32_t color;
    uint8_t isNpc;
    std::string playerName;

    // Additional Information: Keeping color parameter as 0 will make random color on each client.
};

struct ServerQuit final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 138)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    ServerQuitReason reason;
};

struct InitGame final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 139)

    void deserialise(serde::IDeserialiser& deserialiser);

    bool zoneNames;
    bool useCjWalk;
    bool allowWeapons;
    bool limitGlobalChatRadius;
    float globalChatRadius;
    bool stuntBonus;
    float nameTagDistance;
    bool disableEnterExits;
    bool nameTagLos;
    bool manualVehEngineAndLights;
    uint32_t spawnsAvailable;
    uint16_t playerID;
    bool showNameTags;
    uint32_t showPlayerMarkers;
    uint8_t worldTime;
    uint8_t weather;
    float gravity;
    bool lanMode;
    uint32_t deathDropMoney;
    bool instagib;
    uint32_t onfootRate;
    uint32_t inCarRate;
    uint32_t weaponRate;
    uint32_t multiplier;
    uint32_t lagCompMode;
    std::string hostName;
    // uint8_t VehicleModels;
    uint32_t vehicleFriendlyFire;

    // Additional Information: vehicleModels is an array of used vehicle models with size 212.
};

struct UpdateScoresAndPings final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 155)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    int32_t score;
    uint32_t ping;
};

struct ClientCheck final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 103)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t type;
    uint32_t address;
    uint16_t offset;
    uint16_t count;
};

struct GameModeRestart final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 40)

    void deserialise(serde::IDeserialiser& deserialiser);

    // Additional Information: This RPC reconnects a player to the server showing him "The server is restarting..." message.
};

struct ApplyPlayerAnimation final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 86)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    std::string animLib;
    std::string animName;
    float delta;
    bool loop;
    bool lockx;
    bool locky;
    bool freeze;
    uint32_t time;
};

struct ClearPlayerAnimation final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 87)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
};

struct DeathBroadcast final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 166)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
};

struct SetPlayerName final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 11)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    std::string name;
    uint8_t success;

    // Additional Information: Keep success parameter as 1.
};

struct SetPlayerPos final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 12)

    void deserialise(serde::IDeserialiser& deserialiser);

    game::Vector position;
};

struct SetPlayerPosFindZ final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 13)

    void deserialise(serde::IDeserialiser& deserialiser);

    float x;
    float y;
    float z;
};

struct SetPlayerSkillLevel final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 34)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint32_t skillID;
    uint16_t level;
};

struct SetPlayerSkin final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 153)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint32_t playerID;
    uint32_t skinID;
};

struct SetPlayerTime final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 29)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t hour;
    uint8_t minute;
};

struct SetPlayerSpecialAction final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 88)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t actionID;
};

struct SetWeather final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 152)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t weatherID;
};

struct SetWorldBounds final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 17)

    void deserialise(serde::IDeserialiser& deserialiser);

    float maxX;
    float minX;
    float maxY;
    float minY;
};

struct SetPlayerVelocity final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 90)

    void deserialise(serde::IDeserialiser& deserialiser);

    float x;
    float y;
    float z;
};

struct TogglePlayerControllable final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 15)

    void deserialise(serde::IDeserialiser& deserialiser);

    bool moveable;
};

struct TogglePlayerSpectating final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 124)

    void deserialise(serde::IDeserialiser& deserialiser);

    bool spectating;
};

struct ToggleClock final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 30)

    void deserialise(serde::IDeserialiser& deserialiser);

    bool toggle;
};

struct SetPlayerTeam final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 69)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint8_t teamID;
};

struct PlaySound final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 16)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint32_t soundID;
    float x;
    float y;
    float z;
};

struct GivePlayerMoney final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 18)

    void deserialise(serde::IDeserialiser& deserialiser);

    int32_t money;
};

struct ResetPlayerMoney final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 20)

    void deserialise(serde::IDeserialiser& deserialiser);
};

struct ResetPlayerWeapons final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 21)

    void deserialise(serde::IDeserialiser& deserialiser);
};

struct GivePlayerWeapon final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 22)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint32_t weaponID;
    uint32_t bullets;
};

struct PlayAudioStream final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 41)

    void deserialise(serde::IDeserialiser& deserialiser);

    std::string url;
    float x;
    float y;
    float z;
    float radius;
    bool usePos;
};

struct PlayCrimeReport final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 112)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t suspectID;
    uint32_t inVehicle;
    uint32_t vehicleModel;
    uint32_t vehicleColor;
    uint32_t crime;
    float x;
    float y;
    float z;
};

struct StopAudioStream final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 42)

    void deserialise(serde::IDeserialiser& deserialiser);
};

struct SetPlayerHealth final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 14)

    void deserialise(serde::IDeserialiser& deserialiser);

    float health;
};

struct SetPlayerArmour final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 66)

    void deserialise(serde::IDeserialiser& deserialiser);

    float armour;
};

struct SetWeaponAmmo final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 145)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t weaponID;
    uint16_t ammo;
};

struct SetCameraBehind final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 162)

    void deserialise(serde::IDeserialiser& deserialiser);
};

struct SetArmedWeapon final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 67)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint32_t weaponID;
};

struct WorldPlayerAdd final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 32)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint8_t team;
    uint32_t skinID;
    float posX;
    float posY;
    float posZ;
    float facingAngle;
    uint32_t playerColor;
    uint8_t fightingStyle;
    uint16_t skillLevel[11];
};

struct WorldPlayerRemove final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 163)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
};

struct InterpolateCamera final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 82)

    void deserialise(serde::IDeserialiser& deserialiser);

    bool posSet;
    float fromPosX;
    float fromPosY;
    float fromPosZ;
    float toPosX;
    float toPosY;
    float toPosZ;
    uint32_t time;
    uint8_t cutType;
};

struct CreateExplosion final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 79)

    void deserialise(serde::IDeserialiser& deserialiser);

    float x;
    float y;
    float z;
    uint32_t type;
    float radius;
};

struct SendDeathMessage final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 55)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t killerID;
    uint16_t playerID;
    uint8_t reason;
};

struct SendGameTimeUpdate final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 60)

    void deserialise(serde::IDeserialiser& deserialiser);

    int32_t time;
};

struct SendClientMessage final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 93)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint32_t color;
    std::string message;
};

struct SetShopName final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 33)

    void deserialise(serde::IDeserialiser& deserialiser);

    std::string name;
};

struct SetPlayerDrunkLevel final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 35)

    void deserialise(serde::IDeserialiser& deserialiser);

    int32_t drunkLevel;
};

struct SetPlayerFightingStyle final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 89)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint8_t fightStyle;
};

struct SetInterior final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 156)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t interiorID;
};

struct SetPlayerColor final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 72)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint16_t playerID;
    uint32_t color;
};

struct ForceClassSelection final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 74)

    void deserialise(serde::IDeserialiser& deserialiser);
};

struct ToggleWidescreen final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 111)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t enable;
};

struct SetPlayerWantedLevel final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 133)

    void deserialise(serde::IDeserialiser& deserialiser);

    uint8_t wantedLevel;
};

struct SetCameraPos final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 157)

    void deserialise(serde::IDeserialiser& deserialiser);

    float lookPosX;
    float lookPosY;
    float lookPosZ;
};

struct SetCameraLookAt final : public serde::IDeserialisable {
    LUNA_DEFINE_PACKET(true, 158)

    void deserialise(serde::IDeserialiser& deserialiser);

    float lookPosX;
    float lookPosY;
    float lookPosZ;
    uint8_t cutType;
};

/* ======== IMPLEMENTATION ======== */

inline void StatsUpdate::serialise(serde::ISerialiser& serialiser) const {
    serialiser.serialiseI32(money);
    serialiser.serialiseI32(drunkLevel);
}

inline void FootSync::serialise(serde::ISerialiser& serialiser) const {
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

inline void FootSync::deserialise(serde::IDeserialiser& deserialiser) {
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

inline void SetPlayerFacingAngle::deserialise(serde::IDeserialiser& deserialiser) {
    angle = deserialiser.deserialiseF32();
}

inline void ServerJoin::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    color = deserialiser.deserialiseU32();
    isNpc = deserialiser.deserialiseU8();

    uint8_t playerNameLength = deserialiser.deserialiseU8();
    playerName.resize(playerNameLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(playerName.data()), playerNameLength);
}

inline void ServerQuit::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    reason = static_cast<ServerQuitReason>(deserialiser.deserialiseU8());
}

inline void InitGame::deserialise(serde::IDeserialiser& deserialiser) {
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

inline void UpdateScoresAndPings::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    score = deserialiser.deserialiseI32();
    ping = deserialiser.deserialiseU32();
}

inline void ClientCheck::deserialise(serde::IDeserialiser& deserialiser) {
    type = deserialiser.deserialiseU8();
    address = deserialiser.deserialiseU32();
    offset = deserialiser.deserialiseU16();
    count = deserialiser.deserialiseU16();
}

inline void GameModeRestart::deserialise(serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void ApplyPlayerAnimation::deserialise(serde::IDeserialiser& deserialiser) {
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

inline void ClearPlayerAnimation::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
}

inline void DeathBroadcast::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
}

inline void SetPlayerName::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    uint8_t nameLength = deserialiser.deserialiseU8();

    name.resize(nameLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(name.data()), nameLength);

    success = deserialiser.deserialiseU8();
}

inline void SetPlayerPos::deserialise(serde::IDeserialiser& deserialiser) {
    deserialiser.deserialise(position);
}

inline void SetPlayerPosFindZ::deserialise(serde::IDeserialiser& deserialiser) {
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

inline void SetPlayerSkillLevel::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    skillID = deserialiser.deserialiseU32();
    level = deserialiser.deserialiseU16();
}

inline void SetPlayerSkin::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU32();
    skinID = deserialiser.deserialiseU32();
}

inline void SetPlayerTime::deserialise(serde::IDeserialiser& deserialiser) {
    hour = deserialiser.deserialiseU8();
    minute = deserialiser.deserialiseU8();
}

inline void SetPlayerSpecialAction::deserialise(serde::IDeserialiser& deserialiser) {
    actionID = deserialiser.deserialiseU8();
}

inline void SetWeather::deserialise(serde::IDeserialiser& deserialiser) {
    weatherID = deserialiser.deserialiseU8();
}

inline void SetWorldBounds::deserialise(serde::IDeserialiser& deserialiser) {
    maxX = deserialiser.deserialiseF32();
    minX = deserialiser.deserialiseF32();
    maxY = deserialiser.deserialiseF32();
    minY = deserialiser.deserialiseF32();
}

inline void SetPlayerVelocity::deserialise(serde::IDeserialiser& deserialiser) {
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

inline void TogglePlayerControllable::deserialise(serde::IDeserialiser& deserialiser) {
    moveable = deserialiser.deserialiseU8();
}

inline void TogglePlayerSpectating::deserialise(serde::IDeserialiser& deserialiser) {
    spectating = deserialiser.deserialiseU32();
}

inline void ToggleClock::deserialise(serde::IDeserialiser& deserialiser) {
    toggle = deserialiser.deserialiseU8();
}

inline void SetPlayerTeam::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    teamID = deserialiser.deserialiseU8();
}

inline void PlaySound::deserialise(serde::IDeserialiser& deserialiser) {
    soundID = deserialiser.deserialiseU32();
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

inline void GivePlayerMoney::deserialise(serde::IDeserialiser& deserialiser) {
    money = deserialiser.deserialiseI32();
}

inline void ResetPlayerMoney::deserialise(serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void ResetPlayerWeapons::deserialise(serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void GivePlayerWeapon::deserialise(serde::IDeserialiser& deserialiser) {
    weaponID = deserialiser.deserialiseU32();
    bullets = deserialiser.deserialiseU32();
}

inline void PlayAudioStream::deserialise(serde::IDeserialiser& deserialiser) {
    uint8_t urlLength = deserialiser.deserialiseU8();

    url.resize(urlLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(url.data()), urlLength);
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
    radius = deserialiser.deserialiseF32();
    usePos = deserialiser.deserialiseU8();
}

inline void PlayCrimeReport::deserialise(serde::IDeserialiser& deserialiser) {
    suspectID = deserialiser.deserialiseU16();
    inVehicle = deserialiser.deserialiseU32();
    vehicleModel = deserialiser.deserialiseU32();
    vehicleColor = deserialiser.deserialiseU32();
    crime = deserialiser.deserialiseU32();
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
}

inline void StopAudioStream::deserialise(serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void SetPlayerHealth::deserialise(serde::IDeserialiser& deserialiser) {
    health = deserialiser.deserialiseF32();
}

inline void SetPlayerArmour::deserialise(serde::IDeserialiser& deserialiser) {
    armour = deserialiser.deserialiseF32();
}

inline void SetWeaponAmmo::deserialise(serde::IDeserialiser& deserialiser) {
    weaponID = deserialiser.deserialiseU8();
    ammo = deserialiser.deserialiseU16();
}

inline void SetCameraBehind::deserialise(serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void SetArmedWeapon::deserialise(serde::IDeserialiser& deserialiser) {
    weaponID = deserialiser.deserialiseU32();
}

inline void WorldPlayerAdd::deserialise(serde::IDeserialiser& deserialiser) {
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

inline void WorldPlayerRemove::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
}

inline void InterpolateCamera::deserialise(serde::IDeserialiser& deserialiser) {
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

inline void CreateExplosion::deserialise(serde::IDeserialiser& deserialiser) {
    x = deserialiser.deserialiseF32();
    y = deserialiser.deserialiseF32();
    z = deserialiser.deserialiseF32();
    type = deserialiser.deserialiseU32();
    radius = deserialiser.deserialiseF32();
}

inline void SendDeathMessage::deserialise(serde::IDeserialiser& deserialiser) {
    killerID = deserialiser.deserialiseU16();
    playerID = deserialiser.deserialiseU16();
    reason = deserialiser.deserialiseU8();
}

inline void SendGameTimeUpdate::deserialise(serde::IDeserialiser& deserialiser) {
    time = deserialiser.deserialiseI32();
}

inline void SendClientMessage::deserialise(serde::IDeserialiser& deserialiser) {
    color = deserialiser.deserialiseU32();
    uint32_t messageLength = deserialiser.deserialiseU32();

    message.resize(messageLength);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(message.data()), messageLength);
}

inline void SetShopName::deserialise(serde::IDeserialiser& deserialiser) {
    uint32_t length = deserialiser.deserialiseU32();

    name.resize(length);
    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(name.data()), length);
}

inline void SetPlayerDrunkLevel::deserialise(serde::IDeserialiser& deserialiser) {
    drunkLevel = deserialiser.deserialiseI32();
}

inline void SetPlayerFightingStyle::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    fightStyle = deserialiser.deserialiseU8();
}

inline void SetInterior::deserialise(serde::IDeserialiser& deserialiser) {
    interiorID = deserialiser.deserialiseU8();
}

inline void SetPlayerColor::deserialise(serde::IDeserialiser& deserialiser) {
    playerID = deserialiser.deserialiseU16();
    color = deserialiser.deserialiseU32();
}

inline void ForceClassSelection::deserialise(serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void ToggleWidescreen::deserialise(serde::IDeserialiser& deserialiser) {
    enable = deserialiser.deserialiseU8();
}

inline void SetPlayerWantedLevel::deserialise(serde::IDeserialiser& deserialiser) {
    wantedLevel = deserialiser.deserialiseU8();
}

inline void SetCameraPos::deserialise(serde::IDeserialiser& deserialiser) {
    lookPosX = deserialiser.deserialiseF32();
    lookPosY = deserialiser.deserialiseF32();
    lookPosZ = deserialiser.deserialiseF32();
}

inline void SetCameraLookAt::deserialise(serde::IDeserialiser& deserialiser) {
    lookPosX = deserialiser.deserialiseF32();
    lookPosY = deserialiser.deserialiseF32();
    lookPosZ = deserialiser.deserialiseF32();
    cutType = deserialiser.deserialiseU8();
}

} // namespace luna::netcode
