// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

namespace luna::game {

class Hud {
public:
    static void installMods();

    Hud() = delete;
    ~Hud() = delete;

    void drawAfterFade();
};

} // namespace luna::game
