// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "main.hh"
#include "placeable.hh"
#include "rect.hh"
#include "vector.hh"
#include "../core/helpers.hh"

namespace luna::game {

class Physical;

class Entity : public Placeable {
public:
    inline virtual ~Entity() override {
        core::callMethod<void>(g_gameAddress + 0x3FAF89, this);
    }

    inline virtual void add() {
        return core::callMethod<void>(g_gameAddress + 0x3FD8D9, this);
    }

    inline virtual void add(Rect* unclippedRect) {
        return core::callMethod<void>(g_gameAddress + 0x3FD8FD, this, unclippedRect);
    }

    inline virtual void remove() {
        return core::callMethod<void>(g_gameAddress + 0x3FDBE9, this);
    }

    inline virtual void setIsStatic(bool isStatic) {
        return core::callMethod<void>(g_gameAddress + 0x290261, this, isStatic);
    }

    inline virtual void setModelIndex(uint32_t index) {
        return core::callMethod<void>(g_gameAddress + 0x3FB00D, this, index);
    }

    inline virtual void setModelIndexNoCreate(uint32_t index) {
        return core::callMethod<void>(g_gameAddress + 0x3FB029, this, index);
    }

    inline virtual void createRwObject() {
        return core::callMethod<void>(g_gameAddress + 0x3FB90D, this);
    }

    inline virtual void deleteRwObject() {
        return core::callMethod<void>(g_gameAddress + 0x3FBBFD, this);
    }

    // WARNING: DO NOT USE THIS FUNCTION.
    inline virtual Rect* _getBoundRect(void* x) {
        return core::callMethod<Rect*>(g_gameAddress + 0x3FBD21, this, x);
    }

    inline virtual void processControl() {
        return core::callMethod<void>(g_gameAddress + 0x2902C5, this);
    }

    inline virtual void processCollision() {
        return core::callMethod<void>(g_gameAddress + 0x2902C7, this);
    }

    inline virtual void processShift() {
        return core::callMethod<void>(g_gameAddress + 0x29027B, this);
    }

    inline virtual bool testCollision(bool applySpeed) {
        return core::callMethod<bool>(g_gameAddress + 0x29027D, this, applySpeed);
    }

    inline virtual void teleport(Vector newCoors, bool clearOrientation) {
        return core::callMethod<void, Vector, uint8_t>(g_gameAddress + 0x290281, this, newCoors, clearOrientation);
    }

    inline virtual void specialEntityPreCollisionStuff(
        Physical* physical, bool doingShift, bool* skipTestEntirely,
        bool* skipCol, bool* forceBuildingCol, bool *forceSoftCol)
    {
        return core::callMethod<void>(g_gameAddress + 0x290283, this, physical, doingShift, skipTestEntirely, skipCol, forceBuildingCol, forceSoftCol);
    }

    inline virtual uint8_t specialEntityCalcCollisionSteps(bool* doPreCheckAtFullSpeed, bool* doPreCheckAtHalfSpeed) {
        return core::callMethod<uint8_t>(g_gameAddress + 0x290285, this, doPreCheckAtFullSpeed, doPreCheckAtHalfSpeed);
    }

    inline virtual void preRender() {
        return core::callMethod<void>(g_gameAddress + 0x3FC28D, this);
    }

    inline virtual void render() {
        return core::callMethod<void>(g_gameAddress + 0x3FD25D, this);
    }

    inline virtual bool setupLighting() {
        return core::callMethod<bool>(g_gameAddress + 0x4204DD, this);
    }

    inline virtual void removeLighting(bool reset) {
        return core::callMethod<void>(g_gameAddress + 0x42051D, this, reset);
    }

    inline virtual void flagToDestroyWhenNextProcessed() {
        return core::callMethod<void>(g_gameAddress + 0x290289, this);
    }
};

} // namespace luna::game
