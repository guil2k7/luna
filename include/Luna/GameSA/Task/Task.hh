// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstddef>

namespace Luna::GameSA {

class CTask {
public:
    CTask() = delete;
    ~CTask() = delete;

    static void* operator new(size_t size);
};

} // namespace Luna::GameSA
