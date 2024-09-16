// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/task/taskComplexDie.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

TaskComplexDie* TaskComplexDie::create(
    WeaponType meansOfDeath, AssocGroupID animGroup, AnimationID animID,
    float blendDelta, float animSpeed,
    bool beingKilledByStealth, bool fallingToDeath,
    int fallToDeathDir, bool fallToDeathOverRailing) {
    auto self = Task::operator new(sizeof(TaskComplexDie));

    callMethod<void*, int, int, int, float, float, bool, bool, int, bool>(
        g_gameAddress + 0x4FB5E1, self,
        meansOfDeath, animGroup, animID, blendDelta, animSpeed,
        beingKilledByStealth, fallingToDeath, fallToDeathDir, fallingToDeath);

    return reinterpret_cast<TaskComplexDie*>(self);
}
