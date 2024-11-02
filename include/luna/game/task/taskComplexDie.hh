// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "task.hh"
#include "../animManagerData.hh"
#include "../weaponInfo.hh"
#include "../../core/helpers.hh"

namespace luna::game {

class TaskComplexDie : public Task {
public:
    static TaskComplexDie* create(
        WeaponType meansOfDeath,
        AssocGroupID animGroup,
        AnimationID animID,
        float blendDelta = 4.0f,
        float animSpeed = 0.0f,
        bool beingKilledByStealth = false,
        bool fallingToDeath = false,
        int fallToDeathDir = 0,
        bool fallToDeathOverRailing = false);

private:
    PADDING(0x28);
};

VALIDATE_SIZE(TaskComplexDie, 0x28);

} // namespace luna::game
