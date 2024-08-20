// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Ped.hh>
#include <Luna/Engine/Game/Task/TaskComplexDie.hh>
#include <algorithm>

using namespace Luna::Engine::Game;

void CPed::SetHealth(float value) {
    m_Health = std::min(value, m_Health);

    if (value == 0.0f) {
        auto task = CTaskComplexDie::Create(
            WEAPONTYPE_UNARMED, ANIM_STD_PED, ANIM_STD_KO_FRONT);

        GetTaskManager()->SetTask(task, 4, false);
    }
}
