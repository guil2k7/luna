// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Game/Messages.hh>
#include <Luna/Engine/Game/Addresses.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CMessages::AddBigMessage(GxtChar const* text, uint32_t duration, uint16_t row) {
    CallFunction<void>(GameAddress + GAME_ADDR_CMESSAGES_ADDBIGMESSAGE, text, duration, row);
}
