// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../Helpers.hh"

namespace LunaEngine::Game {

class CPlayerPed;

class CPlayerInfo {
public:
    CPlayerPed* PlayerPed;

private:
    PADDING(0x190);
};

VALIDATE_SIZE(CPlayerInfo, 0x194);

} // namespace LunaEngine::Game
