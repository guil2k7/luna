// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Matrix.hh>
#include <cmath>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CMatrix::SetRotateZOnly(float angle) {
    float sinAngle = sin(angle);
    float cosAngle = cos(angle);

    Right.Set(cosAngle, sinAngle, 0.0f);
    Forward.Set(-sinAngle, cosAngle, 0.0f);
    Up.Set(0.0f, 0.0f, 1.0f);
}
