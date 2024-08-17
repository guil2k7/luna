// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "Task.hh"

namespace Luna::Engine::Game {

class CTaskManager {
public:
    CTaskManager() = delete;
    ~CTaskManager() = delete;

    inline void SetTask(CTask* task, int index, bool unk) {
        CallMethod<void, CTask*, int, bool>(
            GameAddress + GAME_ADDR_CTASKMANAGER_SETTASK, this, task, index, unk);
    }
};

} // namespace Luna::Engine::Game
