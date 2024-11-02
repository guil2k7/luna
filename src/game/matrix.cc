// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/matrix.hh>
#include <cmath>

using namespace luna::core;
using namespace luna::game;

void Matrix::setRotateZOnly(float angle) {
    float sinAngle = sinf(angle);
    float cosAngle = cosf(angle);

    right.set(cosAngle, sinAngle, 0.0f);
    forward.set(-sinAngle, cosAngle, 0.0f);
    up.set(0.0f, 0.0f, 1.0f);
}
