// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstdint>

namespace luna::netgame {

enum RemotePadKey {
    REMOTE_PAD_KEY_ACTION = 1 << 0,
    REMOTE_PAD_KEY_CROUCH = 1 << 1,
    REMOTE_PAD_KEY_FIRE = 1 << 2,
    REMOTE_PAD_KEY_SPRINT = 1 << 3,
    REMOTE_PAD_KEY_SECONDARY_ATTACK = 1 << 4,
    REMOTE_PAD_KEY_JUMP = 1 << 5,
    REMOTE_PAD_KEY_LOOK_RIGHT = 1 << 6,
    REMOTE_PAD_KEY_HANDBRAKE = 1 << 7,
    REMOTE_PAD_KEY_LOOK_LEFT = 1 << 8,
    REMOTE_PAD_KEY_SUBMISSION = 1 << 9,
    REMOTE_PAD_KEY_LOOK_BEHIND = 1 << 10,
    REMOTE_PAD_KEY_WALK = 1 << 11,
    REMOTE_PAD_KEY_ANALOG_UP = 1 << 12,
    REMOTE_PAD_KEY_ANALOG_DOWN = 1 << 13,
    REMOTE_PAD_KEY_ANALOG_LEFT = 1 << 14,
    REMOTE_PAD_KEY_ANALOG_RIGHT = 1 << 15,
};

struct RemotePad {
    int id;

    int16_t upDown = 0;
    int16_t leftRight = 0;
    uint16_t keys = 0;

    inline bool isKeyPressed(RemotePadKey key) const {
        return keys & key;
    }

    inline void pressKey(RemotePadKey key) {
        keys |= key;
    }

    inline void clearKeys() {
        upDown = 0;
        leftRight = 0;
        keys = 0;
    }
};

} // namespace luna::netgame
