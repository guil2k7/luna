// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "vector.hh"
#include "../core/helpers.hh"
#include <cstdint>

namespace luna::game {

class Matrix {
public:
    inline void resetOrientation() {
        right.set(1.0f, 0.0f, 0.0f);
        forward.set(0.0f, 1.0f, 0.0f);
        up.set(0.0f, 0.0f, 1.0f);
    }

    inline void setUnity() {
        resetOrientation();
        position.reset();
    }

    void setRotateZOnly(float angle);

    Vector right;
    uint32_t flags;
    Vector forward;
    PADDING(4);
    Vector up;
    PADDING(4);
    Vector position;
};

VALIDATE_SIZE(Matrix, 60);

// VALIDATE_OFFSET(Matrix, right, 0);
VALIDATE_OFFSET(Matrix, forward, 0x10);
// VALIDATE_OFFSET(Matrix, pos, 0x30);

} // namespace luna::game
