// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "rw/rwplcore.h"

namespace luna::game {

class Vector2D : public RwV2d {
public:
    constexpr Vector2D()
        : RwV2d { 0.0f, 0.0f }
    { }

    constexpr Vector2D(float x, float y)
        : RwV2d { x, y }
    { }

    inline void set(float x_, float y_, float z_) {
        x = x_;
        y = y_;
    }

    inline void reset() {
        x = 0.0f;
        y = 0.0f;
    }
};

class Vector : public RwV3d {
public:
    constexpr Vector()
        : RwV3d { 0.0f, 0.0f, 0.0f } {
    }
    constexpr Vector(float x, float y, float z)
        : RwV3d { x, y, z } {
    }

    inline void set(float x_, float y_, float z_) {
        x = x_;
        y = y_;
        z = z_;
    }

    inline void reset() {
        x = 0.0f;
        y = 0.0f;
        z = 0.0f;
    }

    inline Vector offset(Vector const& that) const {
        Vector offset;

        offset.x = x - that.x;
        offset.y = y - that.y;
        offset.z = z - that.z;

        return offset;
    }

    inline Vector absoluteOffset(Vector const& that) const {
        Vector offset = this->offset(that);

        if (offset.x < 0.0f)
            offset.x = -offset.x;
        if (offset.y < 0.0f)
            offset.y = -offset.y;
        if (offset.z < 0.0f)
            offset.z = -offset.z;

        return offset;
    }

    inline Vector& operator*=(Vector const& that) {
        x *= that.x;
        y *= that.y;
        z *= that.z;

        return *this;
    }
};

} // namespace luna::game
