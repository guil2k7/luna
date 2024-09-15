// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "matrix.hh"
#include <cmath>

namespace luna::game {

class Quaternion {
public:
    constexpr Quaternion()
        : w {}
        , x {}
        , y {}
        , z {}
    { }

    constexpr Quaternion(float w, float x, float y, float z)
        : w(w)
        , x(x)
        , y(y)
        , z(z)
    { }

    void setFromMatrix(Matrix const& matrix);

    float length() const;
    void normalize();

    float w;
    float x;
    float y;
    float z;
};

inline float Quaternion::length() const {
    return std::sqrt(x * x + y * y + z * z + w * w);
}

inline void Quaternion::normalize() {
    float f = 1.0f / length();

    w *= f;
    x *= f;
    y *= f;
    z *= f;
}

} // namespace luna::game
