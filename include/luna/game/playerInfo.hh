// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "animManagerData.hh"
#include "main.hh"
#include "vector.hh"
#include "../core/helpers.hh"

namespace luna::game {

class Wanted;
class PedClothesDesc;
class CopPed;
class Automobile;
struct RpAtomic;
class Entity;
class Ped;
class PlayerPed;
class Vehicle;
struct RwTexture;

struct PlayerPedData {
    Wanted* wanted;
    PedClothesDesc* clothes;
    CopPed* arrestingOfficer;
    Vector2D fightMovement;
    float moveBlendRatio;
    float sprintEnergy;
    float sprintControlCounter;
    int8_t chosenWeapon;
    uint8_t carDangerCounter;
    int32_t standStillTimer;
    uint32_t hitAnimDelayTimer;
    float attackButtonCounter;
    Automobile* dangerCar;
    uint32_t stoppedMoving : 1;
    uint32_t adrenaline : 1;
    uint32_t haveTargetSelected : 1;
    uint32_t freeAiming : 1;
    uint32_t canBeDamaged : 1;
    uint32_t allMeleeAttackPtsBlocked : 1;
    uint32_t justBeenSnacking : 1;
    uint32_t requireHandleBreath : 1;
    uint32_t groupStuffDisabled : 1;
    uint32_t groupAlwaysFollow : 1;
    uint32_t groupNeverFollow : 1;
    uint32_t inVehicleDontAllowWeaponChange : 1;
    uint32_t renderWeapon : 1;
    int32_t playerGroup;
    uint32_t adrenalineEndTime;
    uint8_t drunkenness;
    bool fadeDrunkenness : 8;
    uint8_t drugLevel;
    uint8_t scriptLimitToGangSize;
    float breath;
    AssocGroupID meleeWeaponAnimReferenced;
    AssocGroupID meleeWeaponAnimReferencedExtra;
    float fpsMoveHeading;
    float lookPitch;
    float skateBoardSpeed;
    float skateBoardLean;
    RpAtomic* specialAtomic;
    float gunSpinSpeed;
    float gunSpinAngle;
    uint32_t lastTimeFiring;
    uint32_t targetBone;
    Vector targetBoneOffset;
    uint32_t busFaresCollected;
    bool playerSprintDisabled;
    bool dontAllowWeaponChange;
    bool forceInteriorLighting;
    uint16_t dPadDownPressedInMilliseconds;
    uint16_t dPadUpPressedInMilliseconds;
    int8_t wetness;
    bool playersGangActive : 8;
    uint8_t waterCoverPerc;
    float waterHeight;
    uint32_t fireHsMissilePressedTime;
    Entity* lastHsMissileTarget;
    int32_t modelIndexOfLastBuildingShot;
    uint32_t lastHsMissileLosTime : 31;
    uint32_t lastHsMissileLos : 1;
    Ped* currentProstitutePed;
    Ped* lastProstituteShagged;
};

class PlayerInfo {
public:
    PlayerInfo() {
        core::callMethod<PlayerInfo*>(g_gameAddress + 0x418DE1, this);
    }

    inline void clear() {
        remoteVehicle = nullptr;
        ped = nullptr;
        specCar = nullptr;
        carDensityForCurrentZone = 0;
        roadDensityAroundPlayer = 1.0;
        playerState = 0;
        afterRemoteVehicleExplosion = false;
        createRemoteVehicleExplosion = false;
        fadeAfterRemoteVehicleExplosion = false;
        taxiTimerScore = 0;
        tryingToExitCar = 0;
        taxiTimer = 0;
        score = 0;
        displayScore = 0;
        collectablesPickedUp = 0;
        totalNumCollectables = 3;
        bestBikeWheelieTimeMs = 0;
        bestBikeWheelieDistM = 0.0;
        bestBikeStoppieTimeMs = 0;
        bestBikeStoppieDistM = 0.0;
        tempBufferCounter = 0;
        bestCarTwoWheelsTimeMs = 0;
        bestCarTwoWheelsDistM = 0.0;
        bestBikeWheelieTimeMs = 0;
        bikeRearWheelCounter = 0;
        bikeRearWheelDist = 0.0;
        bikeFrontWheelCounter = 0;
        bikeFrontWheelDist = 0.0;
        timesStuckInARow = 0;
        carTwoWheelCounter = 0;
        carTwoWheelDist = 0.0;
        carLess3WheelCounter = 0;
        lastTimeEnergyLost = 0;
        lastTimeArmourLost = 0;
        lastTimeBigGunFired = 0;
        timesUpsideDownInARow = 0;
        vehicleTimeCounter = 0;
        doesNotGetTired = false;
        fastReload = false;
        fireProof = false;
        havocCaused = 0;
        canDoDriveBy = true;
        maxHealth = 100;
        maxArmour = 100;
        getOutOfJailFree = false;
        freeHealthCare = false;
        timeOfLastCarExplosionCaused = 0;
        explosionMultiplier = 0;
        timeLastEaten = 0;
        lastBustMessageNumber = 1;
        currentChaseValue = 0.0;
        bustedAudioStatus = 0;
        getOject = false;
        requireParachuteTimer = 0;
        requireParachuteTimer = 0;
        parachuteReferenced = false;
    }

    PlayerPed* ped;
    PlayerPedData pedData;
    Vehicle* remoteVehicle;
    Vehicle* specCar;
    int32_t score;
    int32_t displayScore;
    int32_t collectablesPickedUp;
    int32_t totalNumCollectables;
    uint32_t lastBumpPlayerCarTimer;
    uint32_t taxiTimer;
    uint32_t vehicleTimeCounter;
    bool taxiTimerScore : 8;
    bool tryingToExitCar : 8;
    Vehicle* lastTargetVehicle;
    uint8_t playerState;
    bool afterRemoteVehicleExplosion;
    bool createRemoteVehicleExplosion;
    bool fadeAfterRemoteVehicleExplosion;
    uint32_t timeOfRemoteVehicleExplosion;
    uint32_t lastTimeEnergyLost;
    uint32_t lastTimeArmourLost;
    uint32_t lastTimeBigGunFired;
    uint32_t timesUpsideDownInARow;
    uint32_t timesStuckInARow;
    uint32_t carTwoWheelCounter;
    float carTwoWheelDist;
    uint32_t carLess3WheelCounter;
    uint32_t bikeRearWheelCounter;
    float bikeRearWheelDist;
    uint32_t bikeFrontWheelCounter;
    float bikeFrontWheelDist;
    uint32_t tempBufferCounter;
    uint32_t bestCarTwoWheelsTimeMs;
    float bestCarTwoWheelsDistM;
    uint32_t bestBikeWheelieTimeMs;
    float bestBikeWheelieDistM;
    uint32_t bestBikeStoppieTimeMs;
    float bestBikeStoppieDistM;
    uint16_t carDensityForCurrentZone;
    float roadDensityAroundPlayer;
    uint32_t timeOfLastCarExplosionCaused;
    int32_t explosionMultiplier;
    int32_t havocCaused;
    int16_t timeLastEaten;
    float currentChaseValue;
    bool doesNotGetTired;
    bool fastReload;
    bool fireProof;
    uint8_t maxHealth;
    uint8_t maxArmour;
    bool getOutOfJailFree;
    bool freeHealthCare;
    bool canDoDriveBy;
    uint8_t bustedAudioStatus;
    uint16_t lastBustMessageNumber;

    // CPlayerCrossHair CrossHair;
    PADDING(0xC);

    bool getOject;
    char skinName[32];
    RwTexture* skinTexture;
    bool parachuteReferenced;
    uint32_t requireParachuteTimer;
};

VALIDATE_SIZE(PlayerInfo, 0x194);

} // namespace luna::game
