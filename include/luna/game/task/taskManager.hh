// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

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
