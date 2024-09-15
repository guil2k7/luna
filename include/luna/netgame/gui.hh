// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../game/osWrapper.hh"
#include "../game/rw/rwcore.h"
#include "../game/rw/rwplcore.h"
#include <vector>
#include <imgui.h>

namespace luna::netgame {

class GuiWidget {
public:
    virtual void render() = 0;
};

class Gui {
public:
    static Gui* s_instance;

    static void initialise();
    static void release();

    inline void addWidget(GuiWidget* widget) {
        m_widgets.push_back(widget);
    }

    void render();

    void onPointerMove(int x, int y);
    void onPointerButton(game::OsPointerState state, int x, int y);
    void onKeyDown(game::OsKeyboardKey keyCode);
    void onKeyUp(game::OsKeyboardKey keyCode);

private:
    RwTexture* m_fontTexture;
    RwIm2DVertex* m_vertexBuf;
    size_t m_vertexBufSize;
    std::vector<GuiWidget*> m_widgets;

    Gui();
    ~Gui();

    void setupStyle();

    void newFrame();
    void renderDrawData(ImDrawData* drawData);

    void createFontsTexture();
    void reserveVertices(size_t newSize);
};

} // namespace luna::gameSA
