// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "dma.hh"
#include <cstdint>

namespace luna::game {

class Messages {
public:
    static void addBigMessage(GxtChar const* text, uint32_t duration, uint16_t row);
};

} // namespace luna::game
