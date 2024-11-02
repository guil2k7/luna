// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "dma.hh"
#include <cstdint>

namespace luna::game {

class Messages {
public:
    static void addBigMessage(GxtChar const* text, uint32_t duration, uint16_t row);
};

} // namespace luna::game
