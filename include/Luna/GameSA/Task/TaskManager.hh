// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Task.hh"

namespace Luna::GameSA {

class CTaskManager {
public:
    CTaskManager() = delete;
    ~CTaskManager() = delete;

    void SetTask(CTask* task, int index, bool unk);
};

} // namespace Luna::GameSA
