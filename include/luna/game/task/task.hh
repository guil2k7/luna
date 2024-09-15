// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstddef>

namespace luna::game {

class Task {
public:
    Task() = delete;
    ~Task() = delete;

    static void* operator new(size_t size);
};

} // namespace luna::game
