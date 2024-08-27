// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

namespace Luna::GameSA {

class CHud {
public:
    static void InstallMods();

    CHud() = delete;
    ~CHud() = delete;

    void DrawAfterFade();
};

} // namespace Luna::GameSA
