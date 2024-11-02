// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "entity.hh"
#include "../core/helpers.hh"

namespace luna::game {

struct PhyscalVtable : public EntityVtable {
    int (LUNA_THISCALL *processEntityCollision)(void* thiz, Entity* entity, void* colPoints);
};

class Physical : public Entity {
public:
    inline PhyscalVtable* vtable() const {
        return reinterpret_cast<PhyscalVtable*>(m_vtable);
    }
};

} // namespace luna::game
