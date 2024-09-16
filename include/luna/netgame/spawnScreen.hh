// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "gui.hh"

namespace luna::netgame {

class SpawnScreen final : public GuiWidget {
public:
    static SpawnScreen* s_instance;

    SpawnScreen()
        : currentClassID(0)
        , numberOfClasses(0)
    {}
    
    inline void show() {
        Gui::get()->addWidget(this);
    }

    inline void hide() {
        Gui::get()->removeWidget(this);
    }

    void requestNextClass();
    void requestPreviousClass();
    void requestCurrentClass();
    void requestSpawn();

    void render() override;

    int currentClassID;
    int numberOfClasses;
};

} // namespace luna::netgame
