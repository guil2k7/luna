// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include <cstdint>

namespace LunaEngine::Game {

enum ePadKey {
    PAD_KEY_ACTION           = 1 << 0,
    PAD_KEY_CROUCH           = 1 << 1,
    PAD_KEY_FIRE             = 1 << 2,
    PAD_KEY_SPRINT           = 1 << 3,
    PAD_KEY_SECONDARY_ATTACK = 1 << 4,
    PAD_KEY_JUMP             = 1 << 5,
    PAD_KEY_LOOK_RIGHT       = 1 << 6,
    PAD_KEY_HANDBRAKE        = 1 << 7,
    PAD_KEY_LOOK_LEFT        = 1 << 8,
    PAD_KEY_SUBMISSION       = 1 << 9,
    PAD_KEY_LOOK_BEHIND      = 1 << 10,
    PAD_KEY_WALK             = 1 << 11,
    PAD_KEY_ANALOG_UP        = 1 << 12,
    PAD_KEY_ANALOG_DOWN      = 1 << 13,
    PAD_KEY_ANALOG_LEFT      = 1 << 14,
    PAD_KEY_ANALOG_RIGHT     = 1 << 15,
};

typedef void* CSAPad;

class CPad {
public:
    static CPad* LocalPad;
    static CPad* CurrentPad;

    static void InjectPatchesAndHooks();

    int16_t UpDown;
    int16_t LeftRight;
    uint16_t Keys;

    inline bool IsKeyPressed(ePadKey key) const {
        return Keys & key;
    }

    inline void Clear() {
        UpDown = 0;
        LeftRight = 0;
        Keys = 0;
    }
};

} // namespace LunaEngine::Game
