// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

namespace LunaEngine::Game {

class CHud {
public:
    static void InjectPatchesAndHooks();

    CHud() = delete;
    ~CHud() = delete;

    void DrawAfterFade();
};

} // namespace LunaEngine::Game
