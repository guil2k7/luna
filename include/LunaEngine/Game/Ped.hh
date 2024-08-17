// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "Matrix.hh"
#include "Task/TaskManager.hh"
#include "../Helpers.hh"
#include <cstdint>

namespace LunaEngine::Game {

enum ePedType {
    PED_TYPE_PLAYER1,
    PED_TYPE_PLAYER2,
    PED_TYPE_PLAYER_NETWORK,
};

class CPed {
protected:
    void** vtable;

private:
    // Offset: 0x4.
    PADDING(16); // CSimpleTransform placement.

    // Offset: 0x14. CMatrixLink
    CMatrix* m_Matrix;
    PADDING(1064);

    // Offset: 0x440.
    uint8_t* m_Intelligence;
    PADDING(256);

    // Offset: 0x544.
    float m_Health;
    float m_MaxHealth;
    PADDING(80);

public:
    CPed() = delete;
    ~CPed() = delete;

    // Offset: 0x59C.
    ePedType PedType;

    inline bool IsPlayer() const {
        return PedType <= PED_TYPE_PLAYER_NETWORK;
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
        VALIDATE_OFFSET(CPed, PedType, 1436);
        VALIDATE_OFFSET(CPed, m_MaxHealth, 1352);
    }
};

VALIDATE_SIZE(CPed, 1956);

} // namespace LunaEngine::Game
