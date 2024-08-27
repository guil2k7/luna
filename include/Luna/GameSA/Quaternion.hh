// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Matrix.hh"
#include <cmath>

namespace Luna::GameSA {

class CQuaternion {
public:
    constexpr CQuaternion() : W{}, X{}, Y{}, Z{} {}
    constexpr CQuaternion(float w, float x, float y, float z) : W(w), X(x), Y(y), Z(z) {}

    void SetFromMatrix(CMatrix const& matrix);

    float Length() const;
    void Normalize();

    float W;
    float X;
    float Y;
    float Z;
};

inline float CQuaternion::Length() const {
    return std::sqrt(X * X + Y * Y + Z * Z + W * W);
}

inline void CQuaternion::Normalize() {
    float f = 1.0f / Length();

    W *= f;
    X *= f;
    Y *= f;
    Z *= f;
}

} // namespace Luna::GameSA
