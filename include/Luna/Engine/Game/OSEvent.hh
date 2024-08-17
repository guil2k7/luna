// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

namespace Luna::Engine::Game {

enum eTouchAction : int {
    TOUCH_ACTION_RELEASE = 1,
    TOUCH_ACTION_PRESS,
    TOUCH_ACTION_MOVE,
};

class OSEvents {
public:
    static void InstallMods();
};

} // namespace Luna::Engine::Game
