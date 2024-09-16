// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../game/osWrapper.hh"
#include "../game/rw/rwcore.h"
#include "../game/rw/rwplcore.h"
#include <imgui.h>

namespace luna::netgame {

class Gui;

class GuiWidget {
    friend class Gui; 

public:
    virtual void render() = 0;

private:
    GuiWidget* m_nextWidget = nullptr;
    GuiWidget* m_previousWidget = nullptr;
};

class Gui {
public:
    static void initialise();
    static void release();

    static inline Gui* get() {
        return s_instance;
    }

    void addWidget(GuiWidget* widget);
    void removeWidget(GuiWidget* widget);

    void render();

    void onPointerMove(int x, int y);
    void onPointerButton(game::OsPointerState state, int x, int y);
    void onKeyDown(game::OsKeyboardKey keyCode);
    void onKeyUp(game::OsKeyboardKey keyCode);

private:
    static Gui* s_instance;

    Gui();
    ~Gui();

    void setupStyle();

    void newFrame();
    void renderDrawData(ImDrawData* drawData);

    void createFontsTexture();
    void reserveVertices(size_t newSize);

    RwTexture* m_fontTexture;
    RwIm2DVertex* m_vertexBuf;
    size_t m_vertexBufSize;

    GuiWidget* m_widgetsTail;
    GuiWidget* m_widgetsTop;
};

} // namespace luna::gameSA
