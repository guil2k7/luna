// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/Ped.hh>
#include <LunaEngine/Game/Task/CTaskComplexDie.hh>
#include <algorithm>

using namespace LunaEngine::Game;

void CPed::SetHealth(float value) {
    m_Health = std::min(value, m_Health);

    if (value == 0.0f) {
        auto task = CTaskComplexDie::Create(
            WEAPONTYPE_UNARMED, ANIM_STD_PED, ANIM_STD_KO_FRONT);

        GetTaskManager()->SetTask(task, 4, false);
    }
}
