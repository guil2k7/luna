// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include <cstdint>

namespace Luna::Engine::Game {

typedef char16_t GxtChar;

class CMessages {
public:
    static void AddBigMessage(GxtChar const* text, uint32_t duration, uint16_t row);
};

} // namespace Luna::Engine::Game
