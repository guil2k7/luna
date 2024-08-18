// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Game/OsWrapper.hh>
#include <Luna/Engine/Game/Addresses.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>
#include <Luna/Engine/Hooker.hh>
#include <vector>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

struct CContext {
    std::vector<IOsEventExtension*> Extensions;

    CContext() {
        Extensions.reserve(2);
    }
};

struct AND_TouchPoint {
    int	X;
    int	Y;
    eOsPointerState	State;
    int	ClickIndex;
    float ClickTime[2];
    int	CurrentUpdateCount;
};

enum eOsEventType {
    OSET_RequestExit,
    OSET_KeyboardDown,
    OSET_KeyboardUp,
    OSET_PointerMove,
    OSET_PointerButton,
    OSET_GamepadConnection,
    OSET_GamepadButtonDown,
    OSET_GamepadButtonUp,
    OSET_Pause,
    OSET_Resume,
    OSET_KeyboardSoft,
    OSET_BillingChange,
    OSET_GameServiceChange,
    OSET_GameServiceSignInFailed,
    OSET_GameServiceAchievementsReady,
    OSET_GameServiceCloudLoadReady,
    OSET_GameServiceCloudSaveReady,
    OSET_GameServiceSnapshotCountLoaded,
    OSET_GameServiceSnapshotLoading,
    OSET_GameServiceSnapshotSelected,
    OSET_LowMemory,
    OSET_Notification,
    OSET_Crash,
    OSET_PointerWheel,
    OSET_DragFile,
    OSET_NetworkChanged,
    OSET_HandoffOccurred,
    OSET_HandoffReceived,
    OSET_Headphones,
    OSET_SystemUIShowing,
    OSET_SystemUIClosed,
};

static CContext* Context = nullptr;

static AND_TouchPoint* GetPoint(int trackNum) {
    return &reinterpret_cast<AND_TouchPoint*>(GameAddress + GAME_ADDR_POINTS)[trackNum];
}

static struct {
    void (LUNA_STDCALL *InputEvent)(eOsEventType, void*);
} Trampoline;

static void Hook_InputEvent(eOsEventType type, void* data) {
    Trampoline.InputEvent(type, data);

    switch (type) {
    case OSET_PointerButton: {
        AND_TouchPoint* point = GetPoint(*reinterpret_cast<int*>(data));

        for (auto extension : Context->Extensions)
            extension->OnPointerButton(point->State, point->X, point->Y);

        break;
    }

    case OSET_KeyboardDown:
        for (auto extension : Context->Extensions)
            extension->OnKeyDown(*static_cast<eOsKeyboardKey*>(data));
        break;

    case OSET_KeyboardUp:
        for (auto extension : Context->Extensions)
            extension->OnKeyUp(*static_cast<eOsKeyboardKey*>(data));
        break;

    default:
        break;
    }
}

void OsEvent::InitialiseMods() {
    Context = new CContext();
}

void OsEvent::InstallMods() {
    Trampoline.InputEvent = CHooker(GameAddress + GAME_ADDR_LIB_INPUTEVENT, Hook_InputEvent, true).Hook();
}

void OsEvent::InitialiseExtensions() {
    for (auto extension : Context->Extensions)
        extension->Initialise();
}

void OsEvent::AddExtension(IOsEventExtension* extension) {
    Context->Extensions.push_back(extension);
}

void Game::ShowKeyboard() {
    CallFunction<void, int>(GameAddress + GAME_ADDR_OS_KEYBOARDREQUEST, 1);
}

void Game::HideKeyboard() {
    CallFunction<void, int>(GameAddress + GAME_ADDR_OS_KEYBOARDREQUEST, 0);
}
