// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Extension.hh"

namespace Luna::Engine::Game {

class IGameExtension : public IExtension {
public:
    virtual void Init3() = 0;
};

class CGame {
public:
    static void InitialiseMods();
    static void InstallMods();
    static void InitialiseExtensions();
    static void AddExtension(IGameExtension* extension);

    static bool Init3(char const* datFile);
};

} // namespace Luna::Engine::Game
