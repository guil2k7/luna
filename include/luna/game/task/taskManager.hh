// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "task.hh"

namespace luna::game {

class TaskManager {
public:
    TaskManager() = delete;
    ~TaskManager() = delete;

    void setTask(Task* task, int index, bool unk);
};

} // namespace luna::game
