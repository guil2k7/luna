/* ---- All credits to app (https://github.com/aap) and his project librw ---- */

#include <Luna/Engine/Extensions/ImGui.hh>
#include <Luna/Engine/Game/RW.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Extensions;
using namespace Luna::Engine::Game;

CImGuiExtension::CImGuiExtension() {
    m_FontTexture = nullptr;
    m_VertexBuf = nullptr;
    m_VertexBufSize = 0;
    m_Widgets.reserve(8);
}

CImGuiExtension* CImGuiExtension::Get() {
    static CImGuiExtension* instance = nullptr;

    if (instance == nullptr)
        instance = new CImGuiExtension();

    return instance;
}

void CImGuiExtension::Initialise() {
    IMGUI_CHECKVERSION();

    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();

    io.ConfigFlags |= ImGuiConfigFlags_IsTouchScreen;
    io.MouseSource = ImGuiMouseSource_Mouse;

    io.BackendPlatformUserData = this;
    io.BackendPlatformName = "imgui_impl_rw";

    SetupStyle();
    CreateFontsTexture();
}

void CImGuiExtension::Release() {
    ImGuiIO& io = ImGui::GetIO();
    io.BackendPlatformUserData = nullptr;
    io.BackendPlatformName = nullptr;

    if (m_FontTexture != nullptr)
        RwTextureDestroy(m_FontTexture);

    if (m_VertexBufSize > 0)
        delete[] m_VertexBuf;

    // Release the memory used by the vector.
    m_Widgets = decltype(m_Widgets)();
}

void CImGuiExtension::SetupStyle() {
    ImGuiStyle& style = ImGui::GetStyle();

    ImGui::StyleColorsDark(&style);
    style.ScaleAllSizes(4.0f);

    ImGuiIO& io = ImGui::GetIO();
    io.FontGlobalScale = 2.0f;
}

void CImGuiExtension::DrawAfterFade(Game::CHud* hud) {
    NewFrame();
    ImGui::NewFrame();

    for (auto widget : m_Widgets)
        widget->Render();

    ImGui::EndFrame();
    ImGui::Render();
    RenderDrawData(ImGui::GetDrawData());
}

void CImGuiExtension::NewFrame() {
    ImGuiIO& io = ImGui::GetIO();
    io.DisplaySize = ImVec2(RsGlobal->maximumWidth, RsGlobal->maximumHeight);

    // if (io.WantTextInput && !IsKeyboardShown())
    //     ShowKeyboard();
    // else if (!io.WantTextInput && IsKeyboardShown())
    //     HideKeyboard();

}

void CImGuiExtension::RenderDrawData(ImDrawData* drawData) {
    ImGuiIO& io = ImGui::GetIO();

    ReserveVertices(drawData->TotalVtxCount + 5000);
    m_FontTexture = nullptr;
    m_VertexBuf = nullptr;
    m_VertexBufSize = 0;

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

void CImGuiExtension::CreateFontsTexture() {
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

void CImGuiExtension::ReserveVertices(size_t newSize) {
    if (m_VertexBufSize >= newSize)
        return;

    if (m_VertexBufSize > 0)
        delete[] m_VertexBuf;

    m_VertexBuf = new RwIm2DVertex[newSize];
    m_VertexBufSize = newSize;
}

// void ImGui_ImplRW_ProcessTouchEvent(eTouchAction action, int x, int y) {
//     ImGuiIO& io = ImGui::GetIO();

//     switch(action) {
//     case TOUCH_ACTION_RELEASE:
//         io.MouseDown[0] = false;
//         break;

//     case TOUCH_ACTION_PRESS:
//         io.MousePos = ImVec2(x, y);
//         io.MouseDown[0] = true;
//         break;

//     case TOUCH_ACTION_MOVE:
//         io.MousePos = ImVec2(x, y);
//         break;
//     }
// }
