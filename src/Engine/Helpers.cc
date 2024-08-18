// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Helpers.hh>
#include <cassert>

using namespace Luna;
using namespace Luna::Engine;

void Engine::MakeNop(void* address, size_t size) {
    assert((size % 2) == 0);

    size /= 2;

    for (size_t i = 0; i < size; ++i)
        reinterpret_cast<uint16_t*>(address)[i] = 0x46C0; // MOV R8, R8
}
