// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/task/task.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

void* Task::operator new(size_t size) {
    return callFunction<void*, size_t>(g_gameAddress + 0x4E6A71, size);
}
