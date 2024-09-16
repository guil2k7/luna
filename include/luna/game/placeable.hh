// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "main.hh"
#include "matrix.hh"
#include "../core/helpers.hh"

namespace luna::game {

struct SimpleTransform {
    Vector translate;
    float heading;
};

class Placeable {
public:
    inline virtual ~Placeable() {
        core::callMethod<void>(g_gameAddress + 0x41872D, this);
    }

    inline Matrix* matrix() {
        return m_matrix;
    }

protected:
    SimpleTransform m_transform;
    Matrix* m_matrix;
};

VALIDATE_SIZE(Placeable, 0x18);

} // namespace luna::game
