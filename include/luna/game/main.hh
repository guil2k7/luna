// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include <cstdint>

namespace luna::game {

extern uint8_t* g_gameAddress;

void initialiseMods();
void installMods();

} // namespace luna::game
