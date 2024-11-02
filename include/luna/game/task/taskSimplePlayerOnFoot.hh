// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "task.hh"
#include "../../core/helpers.hh"

namespace luna::game {

class TaskSimplePlayerOnFoot : public Task {
public:
    static TaskSimplePlayerOnFoot* create();

private:
    PADDING(0x34);
};

VALIDATE_SIZE(TaskSimplePlayerOnFoot, 0x34);

} // namespace luna::game
