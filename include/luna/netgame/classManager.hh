// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "gui.hh"

namespace luna::netcode {
    class RequestClassResponse;
} // namespace luna::netcode 

namespace luna::netgame {

class ClassManager final : public GuiWidget {
public:
    static ClassManager* s_instance;

    static void registerNetworkCode();

    ClassManager()
        : currentClassID(0)
        , numberOfClasses(0)
        , m_currentClass(nullptr)
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
    void setCurrentClass(netcode::RequestClassResponse* currentClass);
    bool spawn();

    void render() override;

    int currentClassID;
    int numberOfClasses;

private:
    netcode::RequestClassResponse* m_currentClass;
};

} // namespace luna::netgame
