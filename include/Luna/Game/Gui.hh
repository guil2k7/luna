// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../GameSA/OsWrapper.hh"
#include "../GameSA/RW/rwcore.h"
#include "../GameSA/RW/rwplcore.h"
#include <imgui.h>
#include <vector>

namespace Luna::Game {

class IGuiWidget {
public:
    virtual void Render() = 0;
};

class CGui {
public:
    static CGui* Instance;

    static void Initialise();
    static void Release();

    inline void AddWidget(IGuiWidget* widget) {
        m_Widgets.push_back(widget);
    }

    void Render();

    void OnPointerMove(int x, int y);
    void OnPointerButton(GameSA::eOsPointerState state, int x, int y);
    void OnKeyDown(GameSA::eOsKeyboardKey keyCode);
    void OnKeyUp(GameSA::eOsKeyboardKey keyCode);

private:
    RwTexture* m_FontTexture;
    RwIm2DVertex* m_VertexBuf;
    size_t m_VertexBufSize;
    std::vector<IGuiWidget*> m_Widgets;

    CGui();
    ~CGui();

    void SetupStyle();

    void NewFrame();
    void RenderDrawData(ImDrawData* drawData);

    void CreateFontsTexture();
    void ReserveVertices(size_t newSize);
};

} // namespace Luna::GameSA
