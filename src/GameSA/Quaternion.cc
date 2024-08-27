// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/GameSA/Quaternion.hh>
#include <algorithm>

using namespace Luna::Core;
using namespace Luna::GameSA;

// https://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/
void CQuaternion::SetFromMatrix(CMatrix const& matrix) {
    W = std::sqrt(std::max(0.0f, 1.0f + matrix.Right.x + matrix.Forward.y + matrix.Up.z)) / 2.0f;
    X = std::sqrt(std::max(0.0f, 1.0f + matrix.Right.x - matrix.Forward.y - matrix.Up.z)) / 2.0f;
    Y = std::sqrt(std::max(0.0f, 1.0f - matrix.Right.x + matrix.Forward.y - matrix.Up.z)) / 2.0f;
    Z = std::sqrt(std::max(0.0f, 1.0f - matrix.Right.x - matrix.Forward.y + matrix.Up.z)) / 2.0f;

    X = std::copysign(X, matrix.Up.y - matrix.Forward.z);
    Y = std::copysign(Y, matrix.Right.z - matrix.Up.x);
    Z = std::copysign(Z, matrix.Forward.x - matrix.Right.y);
}
