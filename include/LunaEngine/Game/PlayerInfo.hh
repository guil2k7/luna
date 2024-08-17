// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "AnimManagerData.hh"
#include "Vector.hh"
#include "../Helpers.hh"

namespace LunaEngine::Game {

class CWanted;
class CPedClothesDesc;
class CCopPed;
class CAutomobile;
struct RpAtomic;
class CEntity;
class CPed;
class CPlayerPed;
class CVehicle;
struct RwTexture;

struct CPlayerPedData {
    CWanted* Wanted;
    CPedClothesDesc* Clothes;
    CCopPed* ArrestingOfficer;
    CVector2D FightMovement;
    float MoveBlendRatio;
    float SprintEnergy;
    float SprintControlCounter;
    int8_t ChosenWeapon;
    uint8_t CarDangerCounter;
    int32_t StandStillTimer;
    uint32_t HitAnimDelayTimer;
    float AttackButtonCounter;
    CAutomobile* DangerCar;
    uint32_t StoppedMoving : 1;
    uint32_t Adrenaline : 1;
    uint32_t HaveTargetSelected : 1;
    uint32_t FreeAiming : 1;
    uint32_t CanBeDamaged : 1;
    uint32_t AllMeleeAttackPtsBlocked : 1;
    uint32_t JustBeenSnacking : 1;
    uint32_t RequireHandleBreath : 1;
    uint32_t GroupStuffDisabled : 1;
    uint32_t GroupAlwaysFollow : 1;
    uint32_t GroupNeverFollow : 1;
    uint32_t InVehicleDontAllowWeaponChange : 1;
    uint32_t RenderWeapon : 1;
    int32_t PlayerGroup;
    uint32_t AdrenalineEndTime;
    uint8_t Drunkenness;
    bool FadeDrunkenness : 8;
    uint8_t DrugLevel;
    uint8_t ScriptLimitToGangSize;
    float Breath;
    eAssocGroupID MeleeWeaponAnimReferenced;
    eAssocGroupID MeleeWeaponAnimReferencedExtra;
    float FPSMoveHeading;
    float LookPitch;
    float SkateBoardSpeed;
    float SkateBoardLean;
    RpAtomic* SpecialAtomic;
    float GunSpinSpeed;
    float GunSpinAngle;
    uint32_t LastTimeFiring;
    uint32_t TargetBone;
    CVector TargetBoneOffset;
    uint32_t BusFaresCollected;
    bool PlayerSprintDisabled;
    bool DontAllowWeaponChange;
    bool ForceInteriorLighting;
    uint16_t DPadDownPressedInMilliseconds;
    uint16_t DPadUpPressedInMilliseconds;
    int8_t Wetness;
    bool PlayersGangActive : 8;
    uint8_t WaterCoverPerc;
    float WaterHeight;
    uint32_t FireHSMissilePressedTime;
    CEntity* LastHSMissileTarget;
    int32_t ModelIndexOfLastBuildingShot;
    uint32_t LastHSMissileLOSTime : 31;
    uint32_t LastHSMissileLOS : 1;
    CPed* CurrentProstitutePed;
    CPed* LastProstituteShagged;
};

class CPlayerInfo {
public:
    CPlayerPed* Ped;
    CPlayerPedData PedData;
    CVehicle* RemoteVehicle;
    CVehicle* SpecCar;
    int32_t Score;
    int32_t DisplayScore;
    int32_t CollectablesPickedUp;
    int32_t TotalNumCollectables;
    uint32_t LastBumpPlayerCarTimer;
    uint32_t TaxiTimer;
    uint32_t VehicleTimeCounter;
    bool TaxiTimerScore : 8;
    bool TryingToExitCar : 8;
    CVehicle* LastTargetVehicle;
    uint8_t PlayerState;
    bool AfterRemoteVehicleExplosion;
    bool CreateRemoteVehicleExplosion;
    bool FadeAfterRemoteVehicleExplosion;
    uint32_t TimeOfRemoteVehicleExplosion;
    uint32_t LastTimeEnergyLost;
    uint32_t LastTimeArmourLost;
    uint32_t LastTimeBigGunFired;
    uint32_t TimesUpsideDownInARow;
    uint32_t TimesStuckInARow;
    uint32_t CarTwoWheelCounter;
    float CarTwoWheelDist;
    uint32_t CarLess3WheelCounter;
    uint32_t BikeRearWheelCounter;
    float BikeRearWheelDist;
    uint32_t BikeFrontWheelCounter;
    float BikeFrontWheelDist;
    uint32_t TempBufferCounter;
    uint32_t BestCarTwoWheelsTimeMs;
    float BestCarTwoWheelsDistM;
    uint32_t BestBikeWheelieTimeMs;
    float BestBikeWheelieDistM;
    uint32_t BestBikeStoppieTimeMs;
    float BestBikeStoppieDistM;
    uint16_t CarDensityForCurrentZone;
    float RoadDensityAroundPlayer;
    uint32_t TimeOfLastCarExplosionCaused;
    int32_t ExplosionMultiplier;
    int32_t HavocCaused;
    int16_t TimeLastEaten;
    float CurrentChaseValue;
    bool DoesNotGetTired;
    bool FastReload;
    bool FireProof;
    uint8_t MaxHealth;
    uint8_t MaxArmour;
    bool GetOutOfJailFree;
    bool FreeHealthCare;
    bool CanDoDriveBy;
    uint8_t BustedAudioStatus;
    uint16_t LastBustMessageNumber;

    // CPlayerCrossHair CrossHair;
    PADDING(0xC);

    bool GetOject;
    char SkinName[32];
    RwTexture* SkinTexture;
    bool ParachuteReferenced;
    uint32_t RequireParachuteTimer;
};

VALIDATE_SIZE(CPlayerInfo, 0x194);

} // namespace LunaEngine::Game
