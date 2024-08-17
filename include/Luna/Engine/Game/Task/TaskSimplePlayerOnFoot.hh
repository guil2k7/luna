// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "Task.hh"

namespace Luna::Engine::Game {

class CTaskSimplePlayerOnFoot : public CTask {
public:
    static CTaskSimplePlayerOnFoot* Create();

private:
    PADDING(0x34);
};

VALIDATE_SIZE(CTaskSimplePlayerOnFoot, 0x34);

inline CTaskSimplePlayerOnFoot* CTaskSimplePlayerOnFoot::Create() {
    auto self = CTask::operator new(sizeof (CTaskSimplePlayerOnFoot));

    CallMethod<void*>(GameAddress + GAME_ADDR_CTASKSIMPLEPLAYERONFOOT_CONSTRUCTOR, self);

    return reinterpret_cast<CTaskSimplePlayerOnFoot*>(self);
}

} // namespace Luna::Engine::Game
