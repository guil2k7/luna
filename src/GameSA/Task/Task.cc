// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/GameSA/Task/Task.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/Core/Helpers.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

void* CTask::operator new(size_t size) {
    return CallFunction<void*, size_t>(GameAddress + 0x4E6A71, size);
}
