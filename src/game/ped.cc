// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/ped.hh>
#include <luna/game/task/taskComplexDie.hh>
#include <luna/core/exceptions.hh>
#include <algorithm>

using namespace luna::core;
using namespace luna::game;

void Ped::setHealth(float value) {
    m_health = std::min(value, m_health);

    if (value == 0.0f) {
        auto task = TaskComplexDie::create(
            WEAPONTYPE_UNARMED, ANIM_STD_PED, ANIM_STD_KO_FRONT);

        taskManager()->setTask(task, 4, false);
    }
}
