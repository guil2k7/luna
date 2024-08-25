// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Task/TaskComplexDie.hh>
#include <Luna/Engine/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

CTaskComplexDie* CTaskComplexDie::Create(
    eWeaponType meansOfDeath, eAssocGroupID animGroup, eAnimationID animID,
    float blendDelta, float animSpeed,
    bool beingKilledByStealth, bool fallingToDeath,
    int fallToDeathDir, bool fallToDeathOverRailing
) {
    auto self = CTask::operator new(sizeof (CTaskComplexDie));

    CallMethod<void*, int, int, int, float, float, bool, bool, int, bool>(
        GameAddress + 0x4FB5E1, self,
        meansOfDeath, animGroup, animID, blendDelta, animSpeed,
        beingKilledByStealth, fallingToDeath, fallToDeathDir, fallingToDeath
    );

    return reinterpret_cast<CTaskComplexDie*>(self);
}
