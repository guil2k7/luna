// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Vector.hh"
#include "../Helpers.hh"
#include <cstdint>

namespace Luna::Engine::Game {

/* NOTSA */
enum eSimplePadKey {
    SIMPLE_PAD_KEY_ACTION           = 1 << 0,
    SIMPLE_PAD_KEY_CROUCH           = 1 << 1,
    SIMPLE_PAD_KEY_FIRE             = 1 << 2,
    SIMPLE_PAD_KEY_SPRINT           = 1 << 3,
    SIMPLE_PAD_KEY_SECONDARY_ATTACK = 1 << 4,
    SIMPLE_PAD_KEY_JUMP             = 1 << 5,
    SIMPLE_PAD_KEY_LOOK_RIGHT       = 1 << 6,
    SIMPLE_PAD_KEY_HANDBRAKE        = 1 << 7,
    SIMPLE_PAD_KEY_LOOK_LEFT        = 1 << 8,
    SIMPLE_PAD_KEY_SUBMISSION       = 1 << 9,
    SIMPLE_PAD_KEY_LOOK_BEHIND      = 1 << 10,
    SIMPLE_PAD_KEY_WALK             = 1 << 11,
    SIMPLE_PAD_KEY_ANALOG_UP        = 1 << 12,
    SIMPLE_PAD_KEY_ANALOG_DOWN      = 1 << 13,
    SIMPLE_PAD_KEY_ANALOG_LEFT      = 1 << 14,
    SIMPLE_PAD_KEY_ANALOG_RIGHT     = 1 << 15,
};

/* NOTSA */
struct CSimplePad {
    static CSimplePad* CurrentPad;

    int16_t UpDown;
    int16_t LeftRight;
    uint16_t Keys;

    static CSimplePad* GetFromID(int id);
    static void SetCurrentFromID(int id);

    inline bool IsKeyPressed(eSimplePadKey key) const {
        return Keys & key;
    }

    inline void Clear() {
        UpDown = 0;
        LeftRight = 0;
        Keys = 0;
    }
};

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

    static void InitialiseMods();
    static void InstallMods();
};

VALIDATE_SIZE(CPad, 0x158);

} // namespace Luna::Engine::Game
