// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/task/taskManager.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

void TaskManager::setTask(Task* task, int index, bool unk) {
    callMethod<void, Task*, int, bool>(GAME_ADDRESS + 0x54397B, this, task, index, unk);
}
