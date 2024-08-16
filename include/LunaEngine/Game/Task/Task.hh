// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../Main.hh"
#include "../Addresses.hh"
#include "../../Helpers.hh"
#include <cstddef>

namespace LunaEngine::Game {

class CTask {
public:
    CTask() = delete;
    ~CTask() = delete;

    inline static void* operator new(size_t size) {
        return CallFunction<void*, size_t>(GameAddress + GAME_ADDR_CTASK_OPERATOR_NEW, size);
    }
};

} // namespace LunaEngine::Game
