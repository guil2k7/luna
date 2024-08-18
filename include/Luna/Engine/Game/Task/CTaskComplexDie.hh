// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Task.hh"
#include "../AnimManagerData.hh"
#include "../WeaponInfo.hh"

namespace Luna::Engine::Game {

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

inline CTaskComplexDie* CTaskComplexDie::Create(
    eWeaponType meansOfDeath, eAssocGroupID animGroup, eAnimationID animID,
    float blendDelta, float animSpeed,
    bool beingKilledByStealth, bool fallingToDeath,
    int fallToDeathDir, bool fallToDeathOverRailing
) {
    auto self = CTask::operator new(sizeof (CTaskComplexDie));

    CallMethod<void*, int, int, int, float, float, bool, bool, int, bool>(
        GameAddress + GAME_ADDR_CTASKCOMPLEXDIE_CONSTRUCTOR, self,
        meansOfDeath, animGroup, animID, blendDelta, animSpeed,
        beingKilledByStealth, fallingToDeath, fallToDeathDir, fallingToDeath
    );

    return reinterpret_cast<CTaskComplexDie*>(self);
}

} // namespace Luna::Engine::Game
