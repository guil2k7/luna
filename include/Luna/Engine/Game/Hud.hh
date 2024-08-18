// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../Extension.hh"

namespace Luna::Engine::Game {

class CHud;

class IHudExtension : public IExtension {
public:
    virtual void DrawAfterFade(CHud* hud) = 0;
};

class CHud {
public:
    static void InitialiseMods();
    static void InstallMods();
    static void InitialiseExtensions();
    static void AddExtension(IHudExtension* extension);

    CHud() = delete;
    ~CHud() = delete;

    void DrawAfterFade();
};

} // namespace Luna::Engine::Game
