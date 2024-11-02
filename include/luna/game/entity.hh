// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "main.hh"
#include "placeable.hh"
#include "rect.hh"
#include "vector.hh"
#include "../core/helpers.hh"

namespace luna::game {

class Physical;
class Entity;

struct EntityVtable : public PlaceableVtable {
    void (LUNA_THISCALL *add)(void* thiz);
    void (LUNA_THISCALL *add2)(void* thiz, Rect* unclippedRect);
    void (LUNA_THISCALL *remove)(void* thiz);
    void (LUNA_THISCALL *setIsStatic)(void* thiz, bool isStatic);
    void (LUNA_THISCALL *setModelIndex)(void* thiz, uint32_t index);
    void (LUNA_THISCALL *setModelIndexNoCreate)(void* thiz, uint32_t index);
    void (LUNA_THISCALL *createRwObject)(void* thiz);
    void (LUNA_THISCALL *deleteRwObject)(void* thiz);
    Rect (LUNA_THISCALL *getBoundRect)(void* thiz);
    void (LUNA_THISCALL *processControl)(void* thiz);
    void (LUNA_THISCALL *processCollision)(void* thiz);
    void (LUNA_THISCALL *processShift)(void* thiz);
    bool (LUNA_THISCALL *testCollision)(void* thiz, bool applySpeed);
    void (LUNA_THISCALL *teleport)(void* thiz, Vector newCoors, bool clearOrientation);
    void (LUNA_THISCALL *specialEntityPreCollisionStuf)(
        void* thiz,
        Physical* physical, bool doingShift, bool* skipTestEntirely,
        bool* skipCol, bool* forceBuildingCol, bool *forceSoftCol
    );
    uint8_t (LUNA_THISCALL *specialEntityCalcCollisionSteps)(void* thiz, bool* doPreCheckAtFullSpeed, bool* doPreCheckAtHalfSpeed);
    void (LUNA_THISCALL *preRender)(void* thiz);
    void (LUNA_THISCALL *render)(void* thiz);
    bool (LUNA_THISCALL *setupLighting)(void* thiz);
    void (LUNA_THISCALL *removeLighting)(void* thiz, bool reset);
    void (LUNA_THISCALL *flagToDestroyWhenNextProcessed)(void* thiz);
};

class Entity : public Placeable {
public:
    Entity() = delete;
    ~Entity() = delete;

    inline void setModelIndex(uint32_t index) {
        vtable()->setModelIndex(this, index);
    }

    inline EntityVtable* vtable() const {
        return reinterpret_cast<EntityVtable*>(m_vtable);
    }
};

} // namespace luna::game
