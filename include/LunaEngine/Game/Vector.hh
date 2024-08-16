// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "RW/rwplcore.h"

namespace LunaEngine::Game {

class CVector : public RwV3d {
public:
    constexpr CVector() : RwV3d { 0.0f, 0.0f, 0.0f } {}
    constexpr CVector(float x, float y, float z) : RwV3d { x, y, z } {}

    inline void Set(float x_, float y_, float z_) {
        x = x_;
        y = y_;
        z = z_;
    }

    inline void Reset() {
        x = 0.0f;
        y = 0.0f;
        z = 0.0f;
    }
};

} // namespace LunaEngine::Game
