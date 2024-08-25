// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Messages.hh>
#include <Luna/Engine/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CMessages::AddBigMessage(GxtChar const* text, uint32_t duration, uint16_t row) {
    CallFunction<void>(GameAddress + 0x55C62D, text, duration, row);
}
