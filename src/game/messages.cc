// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/messages.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

void Messages::addBigMessage(GxtChar const* text, uint32_t duration, uint16_t row) {
    callFunction<void>(g_gameAddress + 0x55C62D, text, duration, row);
}
