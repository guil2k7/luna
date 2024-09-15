// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

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
