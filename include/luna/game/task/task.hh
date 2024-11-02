// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

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
