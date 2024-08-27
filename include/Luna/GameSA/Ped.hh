// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Matrix.hh"
#include "Task/TaskManager.hh"
#include "../Core/Helpers.hh"
#include <cstdint>

namespace Luna::GameSA {

enum ePedType {
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

class CPed {
protected:
    // Offset: 0x0.
    void** vtable;

    // Offset: 0x4.
    PADDING(16);

    // Offset: 0x14.
    CMatrix /* CMatrixLink*/ * m_Matrix;
    PADDING(1064);

    // Offset: 0x440.
    uint8_t* m_Intelligence;

    PADDING(256);

    // Offset: 0x544.
    float m_Health;
    float m_MaxHealth;
    float m_Armour;

    PADDING(76);

    // Offset: 0x59C.
    ePedType m_PedType;

public:
    CPed() = delete;
    ~CPed() = delete;

    inline ePedType GetPedType() const {
        return m_PedType;
    }

    inline bool IsPlayer() const {
        return m_PedType <= PEDTYPE_PLAYER_UNUSED;
    }

    inline CTaskManager* GetTaskManager() {
        return reinterpret_cast<CTaskManager*>(m_Intelligence + 4);
    }

    inline CMatrix& GetMatrix() {
        return **reinterpret_cast<CMatrix**>(
            reinterpret_cast<uint8_t*>(this) + 0x14);
    }

    void SetHealth(float value);

    inline float GetHealth() const {
        return m_Health;
    }

private:
    PADDING(516);

    static void _Assertions() {
        VALIDATE_OFFSET(CPed, m_Intelligence, 0x440);
        VALIDATE_OFFSET(CPed, m_PedType, 0x59C);
        VALIDATE_OFFSET(CPed, m_MaxHealth, 0x548);
    }
};

VALIDATE_SIZE(CPed, 1956);

} // namespace Luna::GameSA
