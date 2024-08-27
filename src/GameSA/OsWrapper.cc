// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/Game/Gui.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/OsWrapper.hh>

using namespace Luna;
using namespace Luna::Core;
using namespace Luna::Game;
using namespace Luna::GameSA;

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

static void OnPointerMove(int x, int y) {
    CGui::Instance->OnPointerMove(x, y);
}

static void OnPointerButton(eOsPointerState state, int x, int y) {
    CGui::Instance->OnPointerButton(state, x, y);
}

static void OnKeyDown(eOsKeyboardKey keyCode) {
    CGui::Instance->OnKeyDown(keyCode);
}

static void OnKeyUp(eOsKeyboardKey keyCode) {
    CGui::Instance->OnKeyUp(keyCode);
}

static AND_TouchPoint* GetPoint(int trackNum) {
    return &reinterpret_cast<AND_TouchPoint*>(GameAddress + 0x6E707C)[trackNum];
}

static void Hook_ApplicationEvent(eOsEventType type, void* data) {
    CallFunction<void>(GameAddress + 0x5F54B9, type, data);

    switch (type) {
    case OSET_PointerButton: {
        AND_TouchPoint* point = GetPoint(*reinterpret_cast<int*>(data));
        OnPointerButton(point->State, point->X, point->Y);
        break;
    }

    case OSET_PointerMove: {
        AND_TouchPoint* point = GetPoint(*reinterpret_cast<int*>(data));
        OnPointerMove(point->X, point->Y);
        break;
    }

    case OSET_KeyboardDown:
        OnKeyDown(*static_cast<eOsKeyboardKey*>(data));
        break;

    case OSET_KeyboardUp:
        OnKeyUp(*static_cast<eOsKeyboardKey*>(data));
        break;

    default:
        break;
    }
}

void OsEvent::InstallMods() {
    TakeAndReplace(GameAddress + 0x683724, Hook_ApplicationEvent);
}

void GameSA::ShowKeyboard() {
    // CallFunction<void, int>(GameAddress + GAME_ADDR_OS_KEYBOARDREQUEST, 1);
}

void GameSA::HideKeyboard() {
    // CallFunction<void, int>(GameAddress + GAME_ADDR_OS_KEYBOARDREQUEST, 0);
}

bool GameSA::IsKeyboardShown() {
    // return *reinterpret_cast<int*>(GameAddress + GAME_ADDR_KEYBOARDWASVISIBLE);
    return false;
}
