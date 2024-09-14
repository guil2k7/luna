// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "RW/rwplcore.h"

namespace Luna::GameSA {

class CVector2D : public RwV2d {
public:
    constexpr CVector2D() : RwV2d { 0.0f, 0.0f } {}
    constexpr CVector2D(float x, float y) : RwV2d { x, y } {}

    inline void Set(float x_, float y_, float z_) {
        x = x_;
        y = y_;
    }

    inline void Reset() {
        x = 0.0f;
        y = 0.0f;
    }
};

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

    inline CVector GetOffset(CVector const& that) const {
        CVector offset;

        offset.x = x - that.x;
        offset.y = y - that.y;
        offset.z = z - that.z;

        return offset;
    }

    inline CVector GetAbsoluteOffset(CVector const& that) const {
        CVector offset = GetOffset(that);

        if (offset.x < 0.0f) offset.x = -offset.x;
        if (offset.y < 0.0f) offset.y = -offset.y;
        if (offset.z < 0.0f) offset.z = -offset.z;

        return offset;
    }

    inline CVector& operator *=(CVector const& that) {
        x *= that.x;
        y *= that.y;
        z *= that.z;

        return *this;
    }
};

} // namespace Luna::GameSA
