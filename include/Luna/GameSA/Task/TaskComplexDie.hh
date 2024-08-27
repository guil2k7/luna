// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Task.hh"
#include "../AnimManagerData.hh"
#include "../WeaponInfo.hh"
#include "../../Core/Helpers.hh"

namespace Luna::GameSA {

class CTaskComplexDie : public CTask {
public:
    static CTaskComplexDie* Create(
        eWeaponType meansOfDeath,
        eAssocGroupID animGroup,
        eAnimationID animID,
        float blendDelta = 4.0f,
        float animSpeed = 0.0f,
        bool beingKilledByStealth = false,
        bool fallingToDeath = false,
        int fallToDeathDir = 0,
        bool fallToDeathOverRailing = false
    );

private:
    PADDING(0x28);
};

VALIDATE_SIZE(CTaskComplexDie, 0x28);

} // namespace Luna::GameSA
