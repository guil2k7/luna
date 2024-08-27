// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/Messages.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

void CMessages::AddBigMessage(GxtChar const* text, uint32_t duration, uint16_t row) {
    CallFunction<void>(GameAddress + 0x55C62D, text, duration, row);
}
