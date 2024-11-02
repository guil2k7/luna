// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/game/main.hh>
#include <luna/game/osWrapper.hh>
#include <luna/core/helpers.hh>
#include <luna/netgame/gui.hh>

using namespace luna;
using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

struct ANDTouchPoint {
    int x;
    int y;
    OsPointerState state;
    int clickIndex;
    float clickTime[2];
    int currentUpdateCount;
};

enum OsEventType {
    OSET_REQUEST_EXIT,
    OSET_KEYBOARD_DOWN,
    OSET_KEYBOARD_UP,
    OSET_POINTER_MOVE,
    OSET_POINTER_BUTTON,
    OSET_GAMEPAD_CONNECTION,
    OSET_GAMEPAD_BUTTON_DOWN,
    OSET_GAMEPAD_BUTTON_UP,
    OSET_PAUSE,
    OSET_RESUME,
    OSET_KEYBOARD_SOFT,
    OSET_BILLING_CHANGE,
    OSET_GAME_SERVICE_CHANGE,
    OSET_GAME_SERVICE_SIGN_IN_FAILED,
    OSET_GAME_SERVICE_ACHIEVEMENTS_READY,
    OSET_GAME_SERVICE_CLOUD_LOAD_READY,
    OSET_GAME_SERVICE_CLOUD_SAVE_READY,
    OSET_GAME_SERVICE_SNAPSHOT_COUNT_LOADED,
    OSET_GAME_SERVICE_SNAPSHOT_LOADING,
    OSET_GAME_SERVICE_SNAPSHOT_SELECTED,
    OSET_LOW_MEMORY,
    OSET_NOTIFICATION,
    OSET_CRASH,
    OSET_POINTER_WHEEL,
    OSET_DRAG_FILE,
    OSET_NETWORK_CHANGED,
    OSET_HANDOFF_OCCURRED,
    OSET_HANDOFF_RECEIVED,
    OSET_HEADPHONES,
    OSET_SYSTEM_UI_SHOWING,
    OSET_SYSTEM_UI_CLOSED,
};

static void onPointerMove(int x, int y) {
    Gui::get()->onPointerMove(x, y);
}

static void onPointerButton(OsPointerState state, int x, int y) {
    Gui::get()->onPointerButton(state, x, y);
}

static void onKeyDown(OsKeyboardKey keyCode) {
    Gui::get()->onKeyDown(keyCode);
}

static void onKeyUp(OsKeyboardKey keyCode) {
    Gui::get()->onKeyUp(keyCode);
}

static ANDTouchPoint* getPoint(int trackNum) {
    return &reinterpret_cast<ANDTouchPoint*>(g_gameAddress + 0x6E707C)[trackNum];
}

static void hook_ApplicationEvent(OsEventType type, void* data) {
    callFunction<void>(g_gameAddress + 0x5F54B9, type, data);

    switch (type) {
    case OSET_POINTER_BUTTON: {
        ANDTouchPoint* point = getPoint(*reinterpret_cast<int*>(data));
        onPointerButton(point->state, point->x, point->y);
        break;
    }

    case OSET_POINTER_MOVE: {
        ANDTouchPoint* point = getPoint(*reinterpret_cast<int*>(data));
        onPointerMove(point->x, point->y);
        break;
    }

    case OSET_KEYBOARD_DOWN:
        onKeyDown(*static_cast<OsKeyboardKey*>(data));
        break;

    case OSET_KEYBOARD_UP:
        onKeyUp(*static_cast<OsKeyboardKey*>(data));
        break;

    default:
        break;
    }
}

void OsEvent::installMods() {
    takeAndReplace(g_gameAddress + 0x683724, hook_ApplicationEvent);
}

void game::showKeyboard() {
    // callFunction<void, int>(g_gameAddress + GAME_ADDR_OS_KEYBOARDREQUEST, 1);
}

void game::hideKeyboard() {
    // callFunction<void, int>(g_gameAddress + GAME_ADDR_OS_KEYBOARDREQUEST, 0);
}

bool game::isKeyboardShown() {
    // return *reinterpret_cast<int*>(g_gameAddress + GAME_ADDR_KEYBOARDWASVISIBLE);
    return false;
}
