// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/task/task.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

void* Task::operator new(size_t size) {
    return callFunction<void*, size_t>(g_gameAddress + 0x4E6A71, size);
}
