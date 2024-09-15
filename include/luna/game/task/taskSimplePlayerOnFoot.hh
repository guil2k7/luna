// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

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
