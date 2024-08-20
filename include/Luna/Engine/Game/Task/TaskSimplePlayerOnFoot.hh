// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Task.hh"
#include "../../Helpers.hh"

namespace Luna::Engine::Game {

class CTaskSimplePlayerOnFoot : public CTask {
public:
    static CTaskSimplePlayerOnFoot* Create();

private:
    PADDING(0x34);
};

VALIDATE_SIZE(CTaskSimplePlayerOnFoot, 0x34);

} // namespace Luna::Engine::Game
