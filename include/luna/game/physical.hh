// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "entity.hh"
#include "main.hh"
#include "rect.hh"
#include "../core/helpers.hh"

namespace luna::game {

class Physical : public Entity {
public:
    inline virtual ~Physical() override {
        core::callMethod<void>(g_gameAddress + 0x40CD65, this);
    }

    inline virtual void add() override {
        return core::callMethod<void>(g_gameAddress + 0x40CE3D, this);
    }

    inline virtual void remove() override {
        return core::callMethod<void>(g_gameAddress + 0x40D02D, this);
    }

    // WARNING: DO NOT USE THIS FUNCTION.
    inline virtual Rect* _getBoundRect(void* x) override {
        return core::callMethod<Rect*>(g_gameAddress + 0x40CDE9, this, x);
    }

    inline virtual void processControl() override {
        return core::callMethod<void>(g_gameAddress + 0x40EDCD, this);
    }

    inline virtual void processCollision() override {
        return core::callMethod<void>(g_gameAddress + 0x40EF49, this);
    }

    inline virtual void processShift() override {
        return core::callMethod<void>(g_gameAddress + 0x411141, this);
    }

    inline virtual bool testCollision(bool applySpeed) override {
        return core::callMethod<bool>(g_gameAddress + 0x4119BD, this, applySpeed);
    }

    inline virtual int processEntityCollision(Entity* entity, void* colPoints) {
        return core::callMethod<int>(g_gameAddress + 0x41696D, this, entity, colPoints);
    }
};

} // namespace luna::game
