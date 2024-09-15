// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/quaternion.hh>
#include <algorithm>

using namespace luna::core;
using namespace luna::game;

// https://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/
void Quaternion::setFromMatrix(Matrix const& matrix) {
    w = std::sqrt(std::max(0.0f, 1.0f + matrix.right.x + matrix.forward.y + matrix.up.z)) / 2.0f;
    x = std::sqrt(std::max(0.0f, 1.0f + matrix.right.x - matrix.forward.y - matrix.up.z)) / 2.0f;
    y = std::sqrt(std::max(0.0f, 1.0f - matrix.right.x + matrix.forward.y - matrix.up.z)) / 2.0f;
    z = std::sqrt(std::max(0.0f, 1.0f - matrix.right.x - matrix.forward.y + matrix.up.z)) / 2.0f;

    x = std::copysign(x, matrix.up.y - matrix.forward.z);
    y = std::copysign(y, matrix.right.z - matrix.up.x);
    z = std::copysign(z, matrix.forward.x - matrix.right.y);
}
