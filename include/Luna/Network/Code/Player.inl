// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../SerdeImplementations.hh"

namespace Luna::Network::Code {

inline void CStatsUpdate::Serialise(Serde::ISerialiser& serialiser) const {
    serialiser.SerialiseI32(Money);
    serialiser.SerialiseI32(DrunkLevel);
}

inline void COnFootSync::Serialise(Serde::ISerialiser& serialiser) const {
    serialiser.SerialiseU16(LeftRight);
    serialiser.SerialiseU16(UpDown);
    serialiser.SerialiseU16(Keys);
    serialiser.Serialise(Position);
    serialiser.Serialise(Rotation);
    serialiser.SerialiseU8(Health);
    serialiser.SerialiseU8(Armour);
    serialiser.SerialiseU8(WeaponAdditionalKey);
    serialiser.SerialiseU8(SpecialAction);
    serialiser.Serialise(Velocity);
    serialiser.Serialise(SurfingOffset);
    serialiser.SerialiseU16(SurfingID);
    serialiser.SerialiseU16(AnimationID);
    serialiser.SerialiseU16(AnimationFlags);
}

inline void COnFootSync::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();

    if (deserialiser.DeserialiseBool())
        LeftRight = deserialiser.DeserialiseI16();

    if (deserialiser.DeserialiseBool())
        UpDown = deserialiser.DeserialiseI16();

    Keys = deserialiser.DeserialiseU16();

    deserialiser.Deserialise(Position);

    deserialiser.DeserialiseNormQuat(
        Rotation.W,
        Rotation.X,
        Rotation.Y,
        Rotation.Z
    );

    uint8_t health, armour;
    uint8_t healthArmour = deserialiser.DeserialiseU8();

    health = (health >> 4) & 0xF;
    armour = armour & 0xF;

    if (health == 0xF)
        Health = 100.0f;
    else if (health == 0)
        Health = 0.0f;
    else
        Health = health * 7.0f;

    if (armour == 0xF)
        Armour = 100.0f;
    else if (armour == 0)
        Armour = 0.0f;
    else
        Armour = armour * 7.0f;

    WeaponAdditionalKey = deserialiser.DeserialiseU8();
    SpecialAction = deserialiser.DeserialiseU8();

    deserialiser.DeserialiseCompressedVec(
        Velocity.x,
        Velocity.y,
        Velocity.z
    );

    if (deserialiser.DeserialiseBool()) {
        SurfingID = deserialiser.DeserialiseU16();
        deserialiser.Deserialise(SurfingOffset);
    }
    else {
        SurfingID = 0xFFFF;
    }
}

inline void CSetPlayerFacingAngle::Deserialise(Serde::IDeserialiser& deserialiser) {
    Angle = deserialiser.DeserialiseF32();
}

inline void CServerJoin::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    Color = deserialiser.DeserialiseU32();
    IsNPC = deserialiser.DeserialiseU8();

    uint8_t playerNameLength = deserialiser.DeserialiseU8();
    PlayerName.resize(playerNameLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(PlayerName.data()), playerNameLength);
}

inline void CServerQuit::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    reason = static_cast<eServerQuitReason>(deserialiser.DeserialiseU8());
}

inline void CSendSpawn::Serialise(Serde::ISerialiser& serialiser) const {
    // Nothing to serialise.
}

inline void CRequestClass::Serialise(Serde::ISerialiser& serialiser) const {
    serialiser.SerialiseU16(ID);
}

inline void CRequestSpawn::Serialise(Serde::ISerialiser& serialiser) const {
    // Nothing to serialise.
}

inline void CInitGame::Deserialise(Serde::IDeserialiser& deserialiser) {
    ZoneNames = deserialiser.DeserialiseBool();
    UseCJWalk = deserialiser.DeserialiseBool();
    AllowWeapons = deserialiser.DeserialiseBool();
    LimitGlobalChatRadius = deserialiser.DeserialiseBool();
    GlobalChatRadius = deserialiser.DeserialiseF32();
    StuntBonus = deserialiser.DeserialiseBool();
    NameTagDistance = deserialiser.DeserialiseF32();
    DisableEnterExits = deserialiser.DeserialiseBool();
    NameTagLOS = deserialiser.DeserialiseBool();
    ManualVehEngineAndLights = deserialiser.DeserialiseBool();
    SpawnsAvailable = deserialiser.DeserialiseU32();
    PlayerID = deserialiser.DeserialiseU16();
    ShowNameTags = deserialiser.DeserialiseBool();
    ShowPlayerMarkers = deserialiser.DeserialiseU32();
    WorldTime = deserialiser.DeserialiseU8();
    Weather = deserialiser.DeserialiseU8();
    Gravity = deserialiser.DeserialiseF32();
    LanMode = deserialiser.DeserialiseBool();
    DeathDropMoney = deserialiser.DeserialiseU32();
    Instagib = deserialiser.DeserialiseBool();
    OnfootRate = deserialiser.DeserialiseU32();
    InCarRate = deserialiser.DeserialiseU32();
    WeaponRate = deserialiser.DeserialiseU32();
    Multiplier = deserialiser.DeserialiseU32();
    LagCompMode = deserialiser.DeserialiseU32();

    uint8_t hostNameLength = deserialiser.DeserialiseU8();

    HostName.resize(hostNameLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(HostName.data()), hostNameLength);

    deserialiser.SkipBytes(212); // VehicleModels
    VehicleFriendlyFire = deserialiser.DeserialiseU32();
}

inline void CUpdateScoresAndPings::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    Score = deserialiser.DeserialiseI32();
    Ping = deserialiser.DeserialiseU32();
}

inline void CClientCheck::Deserialise(Serde::IDeserialiser& deserialiser) {
    Type = deserialiser.DeserialiseU8();
    Address = deserialiser.DeserialiseU32();
    Offset = deserialiser.DeserialiseU16();
    Count = deserialiser.DeserialiseU16();
}

inline void CGameModeRestart::Deserialise(Serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void CApplyPlayerAnimation::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();

    uint8_t animLibLength = deserialiser.DeserialiseU8();
    AnimLib.resize(animLibLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(AnimLib.data()), animLibLength);

    uint8_t animNameLength = deserialiser.DeserialiseU8();
    AnimName.resize(animNameLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(AnimName.data()), animNameLength);

    Delta = deserialiser.DeserialiseF32();
    Loop = deserialiser.DeserialiseBool();
    Lockx = deserialiser.DeserialiseBool();
    Locky = deserialiser.DeserialiseBool();
    Freeze = deserialiser.DeserialiseBool();
    Time = deserialiser.DeserialiseU32();
}

inline void CClearPlayerAnimation::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
}

inline void CDeathBroadcast::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
}

inline void CSetPlayerName::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    uint8_t nameLength = deserialiser.DeserialiseU8();

    Name.resize(nameLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(Name.data()), nameLength);

    Success = deserialiser.DeserialiseU8();
}

inline void CSetPlayerPos::Deserialise(Serde::IDeserialiser& deserialiser) {
    deserialiser.Deserialise(Position);
}

inline void CSetPlayerPosFindZ::Deserialise(Serde::IDeserialiser& deserialiser) {
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
}

inline void CSetPlayerSkillLevel::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    SkillID = deserialiser.DeserialiseU32();
    Level = deserialiser.DeserialiseU16();
}

inline void CSetPlayerSkin::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU32();
    SkinID = deserialiser.DeserialiseU32();
}

inline void CSetPlayerTime::Deserialise(Serde::IDeserialiser& deserialiser) {
    Hour = deserialiser.DeserialiseU8();
    Minute = deserialiser.DeserialiseU8();
}

inline void CSetPlayerSpecialAction::Deserialise(Serde::IDeserialiser& deserialiser) {
    ActionID = deserialiser.DeserialiseU8();
}

inline void CSetWeather::Deserialise(Serde::IDeserialiser& deserialiser) {
    WeatherID = deserialiser.DeserialiseU8();
}

inline void CSetWorldBounds::Deserialise(Serde::IDeserialiser& deserialiser) {
    MaxX = deserialiser.DeserialiseF32();
    MinX = deserialiser.DeserialiseF32();
    MaxY = deserialiser.DeserialiseF32();
    MinY = deserialiser.DeserialiseF32();
}

inline void CSetPlayerVelocity::Deserialise(Serde::IDeserialiser& deserialiser) {
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
}

inline void CTogglePlayerControllable::Deserialise(Serde::IDeserialiser& deserialiser) {
    Moveable = deserialiser.DeserialiseU8();
}

inline void CTogglePlayerSpectating::Deserialise(Serde::IDeserialiser& deserialiser) {
    Spectating = deserialiser.DeserialiseU32();
}

inline void CToggleClock::Deserialise(Serde::IDeserialiser& deserialiser) {
    Toggle = deserialiser.DeserialiseU8();
}

inline void CSetPlayerTeam::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    TeamID = deserialiser.DeserialiseU8();
}

inline void CPlaySound::Deserialise(Serde::IDeserialiser& deserialiser) {
    SoundID = deserialiser.DeserialiseU32();
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
}

inline void CGivePlayerMoney::Deserialise(Serde::IDeserialiser& deserialiser) {
    Money = deserialiser.DeserialiseI32();
}

inline void CResetPlayerMoney::Deserialise(Serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void CResetPlayerWeapons::Deserialise(Serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void CGivePlayerWeapon::Deserialise(Serde::IDeserialiser& deserialiser) {
    WeaponID = deserialiser.DeserialiseU32();
    Bullets = deserialiser.DeserialiseU32();
}

inline void CPlayAudioStream::Deserialise(Serde::IDeserialiser& deserialiser) {
    uint8_t urlLength = deserialiser.DeserialiseU8();

    Url.resize(urlLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(Url.data()), urlLength);
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
    Radius = deserialiser.DeserialiseF32();
    UsePos = deserialiser.DeserialiseU8();
}

inline void CPlayCrimeReport::Deserialise(Serde::IDeserialiser& deserialiser) {
    SuspectID = deserialiser.DeserialiseU16();
    InVehicle = deserialiser.DeserialiseU32();
    VehicleModel = deserialiser.DeserialiseU32();
    VehicleColor = deserialiser.DeserialiseU32();
    Crime = deserialiser.DeserialiseU32();
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
}

inline void CStopAudioStream::Deserialise(Serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void CRemoveBuilding::Deserialise(Serde::IDeserialiser& deserialiser) {
    ObjectModel = deserialiser.DeserialiseU32();
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
    Radius = deserialiser.DeserialiseF32();
}

inline void CSetPlayerHealth::Deserialise(Serde::IDeserialiser& deserialiser) {
    Health = deserialiser.DeserialiseF32();
}

inline void CSetPlayerArmour::Deserialise(Serde::IDeserialiser& deserialiser) {
    Armour = deserialiser.DeserialiseF32();
}

inline void CSetWeaponAmmo::Deserialise(Serde::IDeserialiser& deserialiser) {
    WeaponID = deserialiser.DeserialiseU8();
    Ammo = deserialiser.DeserialiseU16();
}

inline void CSetCameraBehind::Deserialise(Serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void CSetArmedWeapon::Deserialise(Serde::IDeserialiser& deserialiser) {
    WeaponID = deserialiser.DeserialiseU32();
}

inline void CWorldPlayerAdd::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    Team = deserialiser.DeserialiseU8();
    SkinId = deserialiser.DeserialiseU32();
    PosX = deserialiser.DeserialiseF32();
    PosY = deserialiser.DeserialiseF32();
    PosZ = deserialiser.DeserialiseF32();
    FacingAngle = deserialiser.DeserialiseF32();
    PlayerColor = deserialiser.DeserialiseU32();
    FightingStyle = deserialiser.DeserialiseU8();
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(SkillLevel), 22);
}

inline void CWorldPlayerRemove::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
}

inline void CInterpolateCamera::Deserialise(Serde::IDeserialiser& deserialiser) {
    PosSet = deserialiser.DeserialiseBool();
    FromPosX = deserialiser.DeserialiseF32();
    FromPosY = deserialiser.DeserialiseF32();
    FromPosZ = deserialiser.DeserialiseF32();
    ToPosX = deserialiser.DeserialiseF32();
    ToPosY = deserialiser.DeserialiseF32();
    ToPosZ = deserialiser.DeserialiseF32();
    Time = deserialiser.DeserialiseU32();
    CutType = deserialiser.DeserialiseU8();
}

inline void CCreateExplosion::Deserialise(Serde::IDeserialiser& deserialiser) {
    X = deserialiser.DeserialiseF32();
    Y = deserialiser.DeserialiseF32();
    Z = deserialiser.DeserialiseF32();
    Type = deserialiser.DeserialiseU32();
    Radius = deserialiser.DeserialiseF32();
}

inline void CSendDeathMessage::Deserialise(Serde::IDeserialiser& deserialiser) {
    KillerID = deserialiser.DeserialiseU16();
    PlayerID = deserialiser.DeserialiseU16();
    Reason = deserialiser.DeserialiseU8();
}

inline void CSendGameTimeUpdate::Deserialise(Serde::IDeserialiser& deserialiser) {
    Time = deserialiser.DeserialiseI32();
}

inline void CSendClientMessage::Deserialise(Serde::IDeserialiser& deserialiser) {
    Color = deserialiser.DeserialiseU32();
    uint32_t messageLength = deserialiser.DeserialiseU32();

    Message.resize(messageLength);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(Message.data()), messageLength);
}

inline void CSetShopName::Deserialise(Serde::IDeserialiser& deserialiser) {
    uint32_t length = deserialiser.DeserialiseU32();

    Name.resize(length);
    deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(Name.data()), length);
}

inline void CSetPlayerDrunkLevel::Deserialise(Serde::IDeserialiser& deserialiser) {
    DrunkLevel = deserialiser.DeserialiseI32();
}

inline void CSetPlayerFightingStyle::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    FightStyle = deserialiser.DeserialiseU8();
}

inline void CSetInterior::Deserialise(Serde::IDeserialiser& deserialiser) {
    InteriorID = deserialiser.DeserialiseU8();
}

inline void CSetPlayerColor::Deserialise(Serde::IDeserialiser& deserialiser) {
    PlayerID = deserialiser.DeserialiseU16();
    Color = deserialiser.DeserialiseU32();
}

inline void CForceClassSelection::Deserialise(Serde::IDeserialiser& deserialiser) {
    // Nothing to deserialise.
}

inline void CToggleWidescreen::Deserialise(Serde::IDeserialiser& deserialiser) {
    Enable = deserialiser.DeserialiseU8();
}

inline void CSetPlayerWantedLevel::Deserialise(Serde::IDeserialiser& deserialiser) {
    WantedLevel = deserialiser.DeserialiseU8();
}

inline void CSetCameraPos::Deserialise(Serde::IDeserialiser& deserialiser) {
    LookPosX = deserialiser.DeserialiseF32();
    LookPosY = deserialiser.DeserialiseF32();
    LookPosZ = deserialiser.DeserialiseF32();
}

inline void CSetCameraLookAt::Deserialise(Serde::IDeserialiser& deserialiser) {
    LookPosX = deserialiser.DeserialiseF32();
    LookPosY = deserialiser.DeserialiseF32();
    LookPosZ = deserialiser.DeserialiseF32();
    CutType = deserialiser.DeserialiseU8();
}

} // namespace Luna::Network::Code
