// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstdint>

namespace Luna::Game {

enum eRemotePadKey {
    REMOTE_PAD_KEY_ACTION           = 1 << 0,
    REMOTE_PAD_KEY_CROUCH           = 1 << 1,
    REMOTE_PAD_KEY_FIRE             = 1 << 2,
    REMOTE_PAD_KEY_SPRINT           = 1 << 3,
    REMOTE_PAD_KEY_SECONDARY_ATTACK = 1 << 4,
    REMOTE_PAD_KEY_JUMP             = 1 << 5,
    REMOTE_PAD_KEY_LOOK_RIGHT       = 1 << 6,
    REMOTE_PAD_KEY_HANDBRAKE        = 1 << 7,
    REMOTE_PAD_KEY_LOOK_LEFT        = 1 << 8,
    REMOTE_PAD_KEY_SUBMISSION       = 1 << 9,
    REMOTE_PAD_KEY_LOOK_BEHIND      = 1 << 10,
    REMOTE_PAD_KEY_WALK             = 1 << 11,
    REMOTE_PAD_KEY_ANALOG_UP        = 1 << 12,
    REMOTE_PAD_KEY_ANALOG_DOWN      = 1 << 13,
    REMOTE_PAD_KEY_ANALOG_LEFT      = 1 << 14,
    REMOTE_PAD_KEY_ANALOG_RIGHT     = 1 << 15,
};

struct CRemotePad {
    int id;

    int16_t UpDown;
    int16_t LeftRight;
    uint16_t Keys;

    inline bool IsKeyPressed(eRemotePadKey key) const {
        return Keys & key;
    }

    inline void Clear() {
        UpDown = 0;
        LeftRight = 0;
        Keys = 0;
    }
};

} // namespace Luna::Game
