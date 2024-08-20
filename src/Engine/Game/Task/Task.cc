// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Task/Task.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void* CTask::operator new(size_t size) {
    return CallFunction<void*, size_t>(GameAddress + 0x4E6A71, size);
}
