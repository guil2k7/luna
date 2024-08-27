// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstdint>

namespace Luna::GameSA {

typedef char16_t GxtChar;

class CMessages {
public:
    static void AddBigMessage(GxtChar const* text, uint32_t duration, uint16_t row);
};

} // namespace Luna::GameSA
