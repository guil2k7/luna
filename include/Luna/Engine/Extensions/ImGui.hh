// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../Game/Hud.hh"
#include "../Game/RW/rwcore.h"
#include "../Game/RW/rwplcore.h"
#include <imgui.h>
#include <vector>

namespace Luna::Engine::Extensions {

class IImGuiWidget {
public:
    virtual void Render() = 0;
};

class CImGuiExtension : public Game::IHudExtension {
public:
    static CImGuiExtension* Get();

    void Initialise() override;
    void Release() override;

    void DrawAfterFade(Game::CHud* hud) override;

    inline void AddWidget(IImGuiWidget* widget) {
        m_Widgets.push_back(widget);
    }

private:
    RwTexture* m_FontTexture;
    RwIm2DVertex* m_VertexBuf;
    size_t m_VertexBufSize;
    std::vector<IImGuiWidget*> m_Widgets;

    CImGuiExtension();

    void SetupStyle();

    void NewFrame();
    void RenderDrawData(ImDrawData* drawData);

    void CreateFontsTexture();
    void ReserveVertices(size_t newSize);
};

} // namespace Luna::Engine::Extensions
