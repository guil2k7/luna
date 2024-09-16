// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/task/taskSimplePlayerOnFoot.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

TaskSimplePlayerOnFoot* TaskSimplePlayerOnFoot::create() {
    auto self = Task::operator new(sizeof(TaskSimplePlayerOnFoot));

    callMethod<void*>(g_gameAddress + 0x547551, self);

    return reinterpret_cast<TaskSimplePlayerOnFoot*>(self);
}
