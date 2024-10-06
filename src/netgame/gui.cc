/* ---- All credits to app (https://github.com/aap) and his project librw ---- */

#include <luna/netgame/gui.hh>
#include <luna/game/rw.hh>

using namespace luna::netgame;
using namespace luna::game;

static ImGuiKey osKeyCodeToImGui(OsKeyboardKey keyCode);

Gui* Gui::s_instance = nullptr;

Gui::Gui()
    : m_fontTexture(nullptr)
    , m_vertexBuf(nullptr)
    , m_vertexBufSize(0)
    , m_widgetsTail(nullptr)
    , m_widgetsTop(nullptr)
{}

Gui::~Gui() {
    if (m_fontTexture != nullptr)
        RwTextureDestroy(m_fontTexture);

    if (m_vertexBufSize > 0)
        delete[] m_vertexBuf;
}

void Gui::initialise() {
    assert(s_instance == nullptr);

    IMGUI_CHECKVERSION();

    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();

    io.ConfigFlags |= ImGuiConfigFlags_IsTouchScreen;
    io.MouseSource = ImGuiMouseSource_Mouse;

    s_instance = new Gui();

    io.BackendPlatformUserData = s_instance;
    io.BackendPlatformName = "imgui_impl_rw";

    s_instance->setupStyle();
}

void Gui::release() {
    assert(s_instance != nullptr);

    ImGuiIO& io = ImGui::GetIO();
    io.BackendPlatformUserData = nullptr;
    io.BackendPlatformName = nullptr;

    delete s_instance;
    s_instance = nullptr;
}

void Gui::addWidget(GuiWidget* widget) {
    widget->m_previousWidget = m_widgetsTop;
    widget->m_nextWidget = nullptr;

    if (m_widgetsTop != nullptr)
        m_widgetsTop->m_nextWidget = widget;

    m_widgetsTop = widget;

    if (m_widgetsTail == nullptr)
        m_widgetsTail = m_widgetsTop;
}

void Gui::removeWidget(GuiWidget* widget) {
    if (widget->m_previousWidget != nullptr)
        widget->m_previousWidget->m_nextWidget = widget->m_nextWidget;

    if (widget->m_nextWidget != nullptr)
        widget->m_nextWidget->m_previousWidget = widget->m_previousWidget;

    if (widget == m_widgetsTop)
        m_widgetsTop = widget->m_previousWidget;

    if (widget == m_widgetsTail)
        m_widgetsTail = widget->m_nextWidget;
}

void Gui::setupStyle() {
    ImGuiStyle& style = ImGui::GetStyle();

    ImGui::StyleColorsDark(&style);
    style.ScaleAllSizes(2.0f);

    ImGuiIO& io = ImGui::GetIO();
    io.FontGlobalScale = 2.0f;
}

void Gui::render() {
    newFrame();
    ImGui::NewFrame();

    for (GuiWidget* widget = m_widgetsTail; widget != nullptr; widget = widget->m_nextWidget)
        widget->render();

    ImGui::EndFrame();
    ImGui::Render();
    renderDrawData(ImGui::GetDrawData());
}

void Gui::onPointerMove(int x, int y) {
    ImGuiIO& io = ImGui::GetIO();
    io.MousePos = ImVec2(x, y);
}

void Gui::onPointerButton(OsPointerState state, int x, int y) {
    ImGuiIO& io = ImGui::GetIO();
    io.MousePos = ImVec2(x, y);

    switch (state) {
    case OSPS_BUTTON_RELEASED:
        io.MouseDown[0] = false;
        break;

    case OSPS_BUTTON_PRESSED:
        io.MouseDown[0] = true;
        break;

    default:
        break;
    }
}

void Gui::onKeyDown(OsKeyboardKey keyCode) {
    ImGuiIO& io = ImGui::GetIO();
    io.AddKeyEvent(osKeyCodeToImGui(keyCode), true);
}

void Gui::onKeyUp(OsKeyboardKey keyCode) {
    ImGuiIO& io = ImGui::GetIO();
    io.AddKeyEvent(osKeyCodeToImGui(keyCode), false);
}

void Gui::newFrame() {
    ImGuiIO& io = ImGui::GetIO();
    io.DisplaySize = ImVec2(RsGlobal->maximumWidth, RsGlobal->maximumHeight);

    if (m_fontTexture == nullptr)
        createFontsTexture();

    if (io.WantTextInput && !isKeyboardShown())
        showKeyboard();
    else if (!io.WantTextInput && isKeyboardShown())
        hideKeyboard();
}

void Gui::renderDrawData(ImDrawData* drawData) {
    ImGuiIO& io = ImGui::GetIO();

    reserveVertices(drawData->TotalVtxCount + 5000);

    RwCamera* camera = RWSRCGLOBAL(curCamera);
    RwIm2DVertex* vtxDst = m_vertexBuf;

    float recipZ = 1.0f / camera->nearPlane;
    float nearZ = RWSRCGLOBAL(dOpenDevice).zBufferNear;

    for (int n = 0; n < drawData->CmdListsCount; ++n) {
        ImDrawList const* cmdList = drawData->CmdLists[n];
        ImDrawVert const* vtxSrc = cmdList->VtxBuffer.Data;

        for (int i = 0; i < cmdList->VtxBuffer.Size; ++i) {
            vtxDst[i].x = vtxSrc[i].pos.x;
            vtxDst[i].y = vtxSrc[i].pos.y;
            vtxDst[i].z = nearZ;
            vtxDst[i].rhw = camera->nearPlane;
            vtxDst[i].emissiveColor = vtxSrc[i].col;
            vtxDst[i].u = vtxSrc[i].uv.x;
            vtxDst[i].v = vtxSrc[i].uv.y;
        }

        vtxDst += cmdList->VtxBuffer.Size;
    }

    void* rwStates[9];

    RwRenderStateGet(rwRENDERSTATEVERTEXALPHAENABLE, &rwStates[0]);
    RwRenderStateGet(rwRENDERSTATESRCBLEND, &rwStates[1]);
    RwRenderStateGet(rwRENDERSTATEDESTBLEND, &rwStates[2]);
    RwRenderStateGet(rwRENDERSTATEZTESTENABLE, &rwStates[3]);
    RwRenderStateGet(rwRENDERSTATETEXTURERASTER, &rwStates[4]);
    RwRenderStateGet(rwRENDERSTATETEXTUREADDRESSU, &rwStates[5]);
    RwRenderStateGet(rwRENDERSTATETEXTUREADDRESSV, &rwStates[6]);
    RwRenderStateGet(rwRENDERSTATETEXTUREFILTER, &rwStates[7]);
    RwRenderStateGet(rwRENDERSTATECULLMODE, &rwStates[8]);

    RwRenderStateSet(rwRENDERSTATEVERTEXALPHAENABLE, (void*)1);
    RwRenderStateSet(rwRENDERSTATESRCBLEND, (void*)rwBLENDSRCALPHA);
    RwRenderStateSet(rwRENDERSTATEDESTBLEND, (void*)rwBLENDINVSRCALPHA);
    RwRenderStateSet(rwRENDERSTATEZTESTENABLE, (void*)0);
    RwRenderStateSet(rwRENDERSTATECULLMODE, (void*)rwCULLMODECULLNONE);

    int vtxOffset = 0;

    for (int n = 0; n < drawData->CmdListsCount; ++n) {
        ImDrawList const* cmdList = drawData->CmdLists[n];
        int idxOffset = 0;

        for (int i = 0; i < cmdList->CmdBuffer.Size; ++i) {
            ImDrawCmd const* pcmd = &cmdList->CmdBuffer[i];

            if (pcmd->UserCallback) {
                pcmd->UserCallback(cmdList, pcmd);

                idxOffset += pcmd->ElemCount;
                continue;
            }

            RwTexture* tex = (RwTexture*)pcmd->TextureId;

            if (tex && tex->raster) {
                RwRenderStateSet(rwRENDERSTATETEXTURERASTER, tex->raster);
                RwRenderStateSet(rwRENDERSTATETEXTUREADDRESSU, (void*)((tex->filterAddressing >> 8) & 0xF));
                RwRenderStateSet(rwRENDERSTATETEXTUREADDRESSV, (void*)((tex->filterAddressing >> 12) & 0xF));
                RwRenderStateSet(rwRENDERSTATETEXTUREFILTER, (void*)(tex->filterAddressing & 0xFF));
            } else {
                RwRenderStateSet(rwRENDERSTATETEXTURERASTER, nullptr);
            }

            RwIm2DRenderIndexedPrimitive(
                rwPRIMTYPETRILIST,
                &m_vertexBuf[vtxOffset], cmdList->VtxBuffer.Size,
                &cmdList->IdxBuffer.Data[idxOffset], pcmd->ElemCount);

            idxOffset += pcmd->ElemCount;
        }

        vtxOffset += cmdList->VtxBuffer.Size;
    }

    RwRenderStateSet(rwRENDERSTATEVERTEXALPHAENABLE, rwStates[0]);
    RwRenderStateSet(rwRENDERSTATESRCBLEND, rwStates[1]);
    RwRenderStateSet(rwRENDERSTATEDESTBLEND, rwStates[2]);
    RwRenderStateSet(rwRENDERSTATEZTESTENABLE, rwStates[3]);
    RwRenderStateSet(rwRENDERSTATETEXTURERASTER, rwStates[4]);
    RwRenderStateSet(rwRENDERSTATETEXTUREADDRESSU, rwStates[5]);
    RwRenderStateSet(rwRENDERSTATETEXTUREADDRESSV, rwStates[6]);
    RwRenderStateSet(rwRENDERSTATETEXTUREFILTER, rwStates[7]);
    RwRenderStateSet(rwRENDERSTATECULLMODE, rwStates[8]);
}

void Gui::createFontsTexture() {
    ImGuiIO& io = ImGui::GetIO();

    // Build texture atlas.
    uint8_t* pixels;
    int width, height, depth, format;

    io.Fonts->GetTexDataAsRGBA32(&pixels, &width, &height);

    RwImage* image = RwImageCreate(width, height, 32);
    RwImageAllocatePixels(image);

    for (int y = 0; y < height; ++y) {
        memcpy(
            image->cpPixels + image->stride * y,
            pixels + width * 4 * y,
            width * 4);
    }

    RwImageFindRasterFormat(image, rwRASTERTYPETEXTURE, &width, &height, &depth, &format);

    RwRaster* raster = RwRasterCreate(width, height, depth, format);
    raster = RwRasterSetFromImage(raster, image);

    m_fontTexture = RwTextureCreate(raster);
    RwTextureSetFilterMode(m_fontTexture, rwFILTERLINEAR);

    RwImageDestroy(image);

    // Store our identifier.
    io.Fonts->SetTexID((ImTextureID)m_fontTexture);
}

void Gui::reserveVertices(size_t newSize) {
    if (m_vertexBufSize >= newSize)
        return;

    if (m_vertexBufSize > 0)
        delete[] m_vertexBuf;

    m_vertexBuf = new RwIm2DVertex[newSize];
    m_vertexBufSize = newSize;
}

static ImGuiKey osKeyCodeToImGui(OsKeyboardKey keyCode) {
    static ImGuiKey map[KK_MAX] = {
        ImGuiKey_Escape,
        ImGuiKey_F1,
        ImGuiKey_F2,
        ImGuiKey_F3,
        ImGuiKey_F4,
        ImGuiKey_F5,
        ImGuiKey_F6,
        ImGuiKey_F7,
        ImGuiKey_F8,
        ImGuiKey_F9,
        ImGuiKey_F10,
        ImGuiKey_F11,
        ImGuiKey_F12,
        ImGuiKey_GraveAccent,
        ImGuiKey_0,
        ImGuiKey_1,
        ImGuiKey_2,
        ImGuiKey_3,
        ImGuiKey_4,
        ImGuiKey_5,
        ImGuiKey_6,
        ImGuiKey_7,
        ImGuiKey_8,
        ImGuiKey_9,
        ImGuiKey_Minus,
        ImGuiKey_Equal,
        ImGuiKey_Backspace,
        ImGuiKey_Tab,
        ImGuiKey_Q,
        ImGuiKey_W,
        ImGuiKey_E,
        ImGuiKey_R,
        ImGuiKey_T,
        ImGuiKey_Y,
        ImGuiKey_U,
        ImGuiKey_I,
        ImGuiKey_O,
        ImGuiKey_P,
        ImGuiKey_LeftBracket,
        ImGuiKey_RightBracket,
        ImGuiKey_Backslash,
        ImGuiKey_CapsLock,
        ImGuiKey_A,
        ImGuiKey_S,
        ImGuiKey_D,
        ImGuiKey_F,
        ImGuiKey_G,
        ImGuiKey_H,
        ImGuiKey_J,
        ImGuiKey_K,
        ImGuiKey_L,
        ImGuiKey_Semicolon,
        ImGuiKey_Apostrophe,
        ImGuiKey_Enter,
        ImGuiKey_LeftShift,
        ImGuiKey_Z,
        ImGuiKey_X,
        ImGuiKey_C,
        ImGuiKey_V,
        ImGuiKey_B,
        ImGuiKey_N,
        ImGuiKey_M,
        ImGuiKey_Comma,
        ImGuiKey_Period,
        ImGuiKey_Slash,
        ImGuiKey_RightShift,
        ImGuiKey_LeftCtrl,
        ImGuiKey_LeftAlt,
        ImGuiKey_Space,
        ImGuiKey_RightAlt,
        ImGuiKey_RightCtrl,
        ImGuiKey_PrintScreen,
        ImGuiKey_Pause,
        ImGuiKey_Insert,
        ImGuiKey_Delete,
        ImGuiKey_Home,
        ImGuiKey_End,
        ImGuiKey_PageUp,
        ImGuiKey_PageDown,
        ImGuiKey_UpArrow,
        ImGuiKey_DownArrow,
        ImGuiKey_LeftArrow,
        ImGuiKey_RightArrow,
        ImGuiKey_KeypadDivide,
        ImGuiKey_KeypadMultiply,
        ImGuiKey_KeypadSubtract,
        ImGuiKey_Keypad7,
        ImGuiKey_Keypad8,
        ImGuiKey_Keypad9,
        ImGuiKey_Equal,
        ImGuiKey_Keypad4,
        ImGuiKey_Keypad5,
        ImGuiKey_Keypad6,
        ImGuiKey_Keypad1,
        ImGuiKey_Keypad2,
        ImGuiKey_Keypad3,
        ImGuiKey_Keypad0,
        ImGuiKey_KeypadDecimal,
        ImGuiKey_2 /* | ImGuiMod_Shift */,
        ImGuiKey_Backspace,
    };

    return map[keyCode];
}
