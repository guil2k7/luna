// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "physical.hh"
#include "task/taskManager.hh"
#include "../core/helpers.hh"
#include <cstdint>

namespace luna::game {

enum PedType {
    PEDTYPE_PLAYER1,
    PEDTYPE_PLAYER2,
    PEDTYPE_PLAYER_NETWORK,
    PEDTYPE_PLAYER_UNUSED,
    PEDTYPE_CIVMALE,
    PEDTYPE_CIVFEMALE,
    PEDTYPE_COP,
    PEDTYPE_GANG1,
    PEDTYPE_GANG2,
    PEDTYPE_GANG3,
    PEDTYPE_GANG4,
    PEDTYPE_GANG5,
    PEDTYPE_GANG6,
    PEDTYPE_GANG7,
    PEDTYPE_GANG8,
    PEDTYPE_GANG9,
    PEDTYPE_GANG10,
    PEDTYPE_DEALER,
    PEDTYPE_MEDIC,
    PEDTYPE_FIRE,
    PEDTYPE_CRIMINAL,
    PEDTYPE_BUM,
    PEDTYPE_PROSTITUTE,
    PEDTYPE_SPECIAL,
    PEDTYPE_MISSION1,
    PEDTYPE_MISSION2,
    PEDTYPE_MISSION3,
    PEDTYPE_MISSION4,
    PEDTYPE_MISSION5,
    PEDTYPE_MISSION6,
    PEDTYPE_MISSION7,
    PEDTYPE_MISSION8,
};

struct PedVtable : public PhyscalVtable {
    void (LUNA_THISCALL *setMoveAnim)(void* thiz);
    bool (LUNA_THISCALL *save)(void* thiz);
    bool (LUNA_THISCALL *load)(void* thiz);
};

class Ped : public Physical {
protected:
    PADDING(1064);

    // Offset: 0x440.
    uint8_t* m_intelligence;

    PADDING(256);

    // Offset: 0x544.
    float m_health;
    float m_maxHealth;
    float m_armour;

    PADDING(4);

    Vector m_currentVelocity;

    PADDING(60);

    // Offset: 0x59C.
    PedType m_pedType;

public:
    inline static void* operator new(size_t size) {
        return core::callFunction<void*>(g_gameAddress + 0x4AF931, size);   
    }

    inline static void operator delete(void* ptr) {
        core::callFunction<void*>(g_gameAddress + 0x4AF901, ptr);   
    }

    inline static void* operator new(size_t, void* ptr) {
        return ptr;
    }

    inline PedType pedType() const {
        return m_pedType;
    }

    inline bool isPlayer() const {
        return m_pedType <= PEDTYPE_PLAYER_UNUSED;
    }

    inline TaskManager* taskManager() {
        return reinterpret_cast<TaskManager*>(m_intelligence + 4);
    }

    inline Vector& currentVelocity() {
        return m_currentVelocity;
    }

    void setHealth(float value);

    inline float health() const {
        return m_health;
    }

    inline float armour() const {
        return m_armour;
    }

    inline PedVtable* vtable() const {
        return reinterpret_cast<PedVtable*>(m_vtable);
    }

private:
    PADDING(516);

    static void _assertions() {
        VALIDATE_OFFSET(Ped, m_intelligence, 0x440);
        VALIDATE_OFFSET(Ped, m_pedType, 0x59C);
        VALIDATE_OFFSET(Ped, m_maxHealth, 0x548);
    }
};

VALIDATE_SIZE(Ped, 1956);

} // namespace luna::game
