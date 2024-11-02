// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "main.hh"
#include "matrix.hh"
#include "../core/helpers.hh"

namespace luna::game {

struct SimpleTransform {
    Vector translate;
    float heading;
};

class Placeable;

struct PlaceableVtable {
    void (LUNA_THISCALL *destructorWithoutDelete)(void* thiz);
    void (LUNA_THISCALL *destructorWithDelete)(void* thiz);
};

class Placeable {
public:
    inline Matrix* matrix() {
        return m_matrix;
    }

    inline PlaceableVtable* vtable() const {
        return reinterpret_cast<PlaceableVtable*>(m_vtable);
    }

protected:
    void* m_vtable;

    SimpleTransform m_transform;
    Matrix* m_matrix;
};

VALIDATE_SIZE(Placeable, 0x18);

} // namespace luna::game
