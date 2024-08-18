// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Main.hh"
#include "../Addresses.hh"
#include "../../Helpers.hh"
#include <cstddef>

namespace Luna::Engine::Game {

class CTask {
public:
    CTask() = delete;
    ~CTask() = delete;

    inline static void* operator new(size_t size) {
        return CallFunction<void*, size_t>(GameAddress + GAME_ADDR_CTASK_OPERATOR_NEW, size);
    }
};

} // namespace Luna::Engine::Game
