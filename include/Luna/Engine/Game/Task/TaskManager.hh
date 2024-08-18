// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

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
