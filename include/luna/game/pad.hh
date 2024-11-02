// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "main.hh"
#include "vector.hh"
#include "../core/helpers.hh"
#include "../netgame/remotePad.hh"
#include <cstdint>

namespace luna::game {

struct ControllerState {
    int16_t leftStickX;
    int16_t leftStickY;
    int16_t rightStickX;
    int16_t rightStickY;
    int16_t leftShoulder1;
    int16_t leftShoulder2;
    int16_t rightShoulder1;
    int16_t rightShoulder2;
    int16_t dPadUp;
    int16_t dPadDown;
    int16_t dPadLeft;
    int16_t dPadRight;
    int16_t start;
    int16_t select;
    int16_t buttonSquare;
    int16_t buttonTriangle;
    int16_t buttonCross;
    int16_t buttonCircle;
    int16_t shockButtonL;
    int16_t shockButtonR;
    bool chatIndicated : 16;
    bool pedWalk : 16;
    bool vehicleMouseLook : 16;
    bool radioTrackSkip : 16;
};

class Pad {
public:
    ControllerState newState;
    ControllerState oldState;
    int _currentPadID;
    int16_t steeringLeftRightBuffer[10];
    int32_t drunkDrivingBufferUsed;
    ControllerState pcTempKeyState;
    ControllerState pcTempJoyState;
    ControllerState pcTempMouseState;
    uint8_t phase;
    int16_t shakeDur;
    uint16_t disablePlayerControls;
    uint8_t shakeFreq;
    uint8_t justOutOfFrontEnd;
    float cruisingSpeed;
    bool rhythm : 8;
    bool wheelie : 8;
    bool stoppie : 8;
    bool applyGas : 8;
    bool applyBrake : 8;
    bool laneCorrection : 8;
    bool usingDebugCamera : 8;
    bool usingDebugPlayerFreeze : 8;
    bool hasCheated : 8;
    bool disableForbiddenTerr : 8;
    bool stopRhythmSprites : 8;
    bool doorsLocked : 8;
    bool regainControl : 8;
    float bikeStickY;
    bool applyBrakes : 8;
    bool disablePlayerEnterCar : 8;
    bool disablePlayerDuck : 8;
    bool disablePlayerFireWeapon : 8;
    bool disablePlayerFireWeaponWithL1 : 8;
    bool disablePlayerCycleWeapon : 8;
    bool disablePlayerJump : 8;
    bool disablePlayerDisplayVitalStats : 8;
    uint32_t lastTimeTouched;
    int32_t averageWeapon;
    int32_t averageEntries;
    uint32_t noShakeBeforeThis;
    uint8_t noShakeFreq;
    bool hasJetPack : 8;
    bool rocketLocked : 8;
    bool trainPassenger : 8;
    bool savedForTrain : 8;
    bool setSteeringMode : 8;
    bool setTouchLayout : 8;
    Vector accel;

    static void setRemotePadAsCurrent(netgame::RemotePad* pad);

    inline static Pad* mainPlayerPad() {
        return reinterpret_cast<Pad*>(g_gameAddress + 0x969B1C);
    }

    static void installMods();
};

VALIDATE_SIZE(Pad, 0x158);

} // namespace luna::game
