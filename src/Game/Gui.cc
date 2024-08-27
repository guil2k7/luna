/* ---- All credits to app (https://github.com/aap) and his project librw ---- */

#include <Luna/Game/Gui.hh>
#include <Luna/GameSA/RW.hh>

using namespace Luna::Game;
using namespace Luna::GameSA;

static ImGuiKey OsKeyCodeToImGui(eOsKeyboardKey keyCode);

CGui* CGui::Instance = nullptr;

CGui::CGui() {
    m_FontTexture = nullptr;
    m_VertexBuf = nullptr;
    m_VertexBufSize = 0;
    m_Widgets.reserve(8);
}

CGui::~CGui() {
    if (m_FontTexture != nullptr)
        RwTextureDestroy(m_FontTexture);

    if (m_VertexBufSize > 0)
        delete[] m_VertexBuf;
}

void CGui::Initialise() {
    assert(Instance == nullptr);

    IMGUI_CHECKVERSION();

    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();

    io.ConfigFlags |= ImGuiConfigFlags_IsTouchScreen;
    io.MouseSource = ImGuiMouseSource_Mouse;

    Instance = new CGui();

    io.BackendPlatformUserData = Instance;
    io.BackendPlatformName = "imgui_impl_rw";

    Instance->SetupStyle();
}

void CGui::Release() {
    assert(Instance != nullptr);

    ImGuiIO& io = ImGui::GetIO();
    io.BackendPlatformUserData = nullptr;
    io.BackendPlatformName = nullptr;

    delete Instance;
    Instance = nullptr;
}

void CGui::SetupStyle() {
    ImGuiStyle& style = ImGui::GetStyle();

    ImGui::StyleColorsDark(&style);
    style.ScaleAllSizes(2.0f);

    ImGuiIO& io = ImGui::GetIO();
    io.FontGlobalScale = 2.0f;
}

void CGui::Render() {
    NewFrame();
    ImGui::NewFrame();

    for (auto widget : m_Widgets)
        widget->Render();

    ImGui::EndFrame();
    ImGui::Render();
    RenderDrawData(ImGui::GetDrawData());
}

void CGui::OnPointerMove(int x, int y) {
    ImGuiIO& io = ImGui::GetIO();
    io.MousePos = ImVec2(x, y);
}

void CGui::OnPointerButton(eOsPointerState state, int x, int y) {
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

void CGui::OnKeyDown(eOsKeyboardKey keyCode) {
    ImGuiIO& io = ImGui::GetIO();
    io.AddKeyEvent(OsKeyCodeToImGui(keyCode), true);
}

void CGui::OnKeyUp(eOsKeyboardKey keyCode) {
    ImGuiIO& io = ImGui::GetIO();
    io.AddKeyEvent(OsKeyCodeToImGui(keyCode), false);
}

void CGui::NewFrame() {
    ImGuiIO& io = ImGui::GetIO();
    io.DisplaySize = ImVec2(RsGlobal->maximumWidth, RsGlobal->maximumHeight);

    if (m_FontTexture == nullptr)
        CreateFontsTexture();

    if (io.WantTextInput && !IsKeyboardShown())
        ShowKeyboard();
    else if (!io.WantTextInput && IsKeyboardShown())
        HideKeyboard();
}

void CGui::RenderDrawData(ImDrawData* drawData) {
    ImGuiIO& io = ImGui::GetIO();

    ReserveVertices(drawData->TotalVtxCount + 5000);

    RwCamera* camera = RWSRCGLOBAL(curCamera);
    RwIm2DVertex* vtxDst = m_VertexBuf;

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
            }
            else {
                RwRenderStateSet(rwRENDERSTATETEXTURERASTER, nullptr);
            }

            RwIm2DRenderIndexedPrimitive(
                rwPRIMTYPETRILIST,
                &m_VertexBuf[vtxOffset], cmdList->VtxBuffer.Size,
                &cmdList->IdxBuffer.Data[idxOffset], pcmd->ElemCount
            );

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

void CGui::CreateFontsTexture() {
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
            width * 4
        );
    }

    RwImageFindRasterFormat(image, rwRASTERTYPETEXTURE, &width, &height, &depth, &format);

    RwRaster* raster = RwRasterCreate(width, height, depth, format);
    raster = RwRasterSetFromImage(raster, image);

    m_FontTexture = RwTextureCreate(raster);
    RwTextureSetFilterMode(m_FontTexture, rwFILTERLINEAR);

    RwImageDestroy(image);

    // Store our identifier.
    io.Fonts->SetTexID((ImTextureID)m_FontTexture);
}

void CGui::ReserveVertices(size_t newSize) {
    if (m_VertexBufSize >= newSize)
        return;

    if (m_VertexBufSize > 0)
        delete[] m_VertexBuf;

    m_VertexBuf = new RwIm2DVertex[newSize];
    m_VertexBufSize = newSize;
}

static ImGuiKey OsKeyCodeToImGui(eOsKeyboardKey keyCode) {
    static ImGuiKey MAP[KK_MAX] = {
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

    return MAP[keyCode];
}
