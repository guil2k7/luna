// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstdint>

namespace Luna::Engine {

extern uint8_t* GameAddress;

void InitialiseMods();
void InstallMods();
void InitialiseExtensions();

} // namespace Luna::Engine
