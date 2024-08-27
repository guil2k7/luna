// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Main.hh"
#include "Vector.hh"
#include "../Core/Helpers.hh"
#include "../Game/RemotePad.hh"
#include <cstdint>

namespace Luna::GameSA {

struct CControllerState {
    int16_t LeftStickX;
    int16_t LeftStickY;
    int16_t RightStickX;
    int16_t RightStickY;
    int16_t LeftShoulder1;
    int16_t LeftShoulder2;
    int16_t RightShoulder1;
    int16_t RightShoulder2;
    int16_t DPadUp;
    int16_t DPadDown;
    int16_t DPadLeft;
    int16_t DPadRight;
    int16_t Start;
    int16_t Select;
    int16_t ButtonSquare;
    int16_t ButtonTriangle;
    int16_t ButtonCross;
    int16_t ButtonCircle;
    int16_t ShockButtonL;
    int16_t ShockButtonR;
    bool ChatIndicated : 16;
    bool PedWalk : 16;
    bool VehicleMouseLook : 16;
    bool RadioTrackSkip : 16;
};

class CPad {
public:
    CControllerState NewState;
    CControllerState OldState;
    int currentPadId;
    int16_t SteeringLeftRightBuffer[10];
    int32_t DrunkDrivingBufferUsed;
    CControllerState PCTempKeyState;
    CControllerState PCTempJoyState;
    CControllerState PCTempMouseState;
    uint8_t Phase;
    int16_t ShakeDur;
    uint16_t DisablePlayerControls;
    uint8_t ShakeFreq;
    uint8_t JustOutOfFrontEnd;
    float CruisingSpeed;
    bool Rhythm : 8;
    bool Wheelie : 8;
    bool Stoppie : 8;
    bool ApplyGas : 8;
    bool ApplyBrake : 8;
    bool LaneCorrection : 8;
    bool UsingDebugCamera : 8;
    bool UsingDebugPlayerFreeze : 8;
    bool HasCheated : 8;
    bool DisableForbiddenTerr : 8;
    bool StopRhythmSprites : 8;
    bool DoorsLocked : 8;
    bool RegainControl : 8;
    float BikeStickY;
    bool ApplyBrakes : 8;
    bool DisablePlayerEnterCar : 8;
    bool DisablePlayerDuck : 8;
    bool DisablePlayerFireWeapon : 8;
    bool DisablePlayerFireWeaponWithL1 : 8;
    bool DisablePlayerCycleWeapon : 8;
    bool DisablePlayerJump : 8;
    bool DisablePlayerDisplayVitalStats : 8;
    uint32_t LastTimeTouched;
    int32_t AverageWeapon;
    int32_t AverageEntries;
    uint32_t NoShakeBeforeThis;
    uint8_t NoShakeFreq;
    bool HasJetPack : 8;
    bool RocketLocked : 8;
    bool TrainPassenger : 8;
    bool SavedForTrain : 8;
    bool SetSteeringMode : 8;
    bool SetTouchLayout : 8;
    CVector Accel;

    static void SetRemotePadAsCurrent(Game::CRemotePad* pad);

    static inline CPad* GetMainPlayerPad() {
        return reinterpret_cast<CPad*>(GameAddress + 0x969B1C);
    }

    static void InstallMods();
};

VALIDATE_SIZE(CPad, 0x158);

} // namespace Luna::GameSA
