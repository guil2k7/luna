// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "Main.hh"
#include "Addresses.hh"
#include "../Extension.hh"

namespace Luna::Engine::Game {

enum eOsPointerState {
    OSPS_BUTTON_INVALID = -1,
    OSPS_BUTTON_RELEASED = 0,
    OSPS_BUTTON_UP,
    OSPS_BUTTON_PRESSED,
    OSPS_BUTTON_DOWN,
};

enum eOsKeyboardKey {
    KK_ESCAPE,
    KK_F1,
    KK_F2,
    KK_F3,
    KK_F4,
    KK_F5,
    KK_F6,
    KK_F7,
    KK_F8,
    KK_F9,
    KK_F10,
    KK_F11,
    KK_F12,
    KK_TILDE,
    KK_0,
    KK_1,
    KK_2,
    KK_3,
    KK_4,
    KK_5,
    KK_6,
    KK_7,
    KK_8,
    KK_9,
    KK_MINUS,
    KK_EQUALS,
    KK_BACKSPACE,
    KK_TAB,
    KK_Q,
    KK_W,
    KK_E,
    KK_R,
    KK_T,
    KK_Y,
    KK_U,
    KK_I,
    KK_O,
    KK_P,
    KK_LEFTBRACKET,
    KK_RIGHTBRACKET,
    KK_BACKSLASH,
    KK_CAPSLOCK,
    KK_A,
    KK_S,
    KK_D,
    KK_F,
    KK_G,
    KK_H,
    KK_J,
    KK_K,
    KK_L,
    KK_SEMICOLON,
    KK_APOSTROPHE,
    KK_ENTER,
    KK_LEFTSHIFT,
    KK_Z,
    KK_X,
    KK_C,
    KK_V,
    KK_B,
    KK_N,
    KK_M,
    KK_COMMA,
    KK_PERIOD,
    KK_FORWARDSLASH,
    KK_RIGHTSHIFT,
    KK_LEFTCONTROL,
    KK_LEFTALT,
    KK_SPACE,
    KK_RIGHTALT,
    KK_RIGHTCONTROL,
    KK_PRINTSCREEN,
    KK_PAUSE,
    KK_INSERT,
    KK_DELETE,
    KK_HOME,
    KK_END,
    KK_PAGEUP,
    KK_PAGEDOWN,
    KK_ARROWUP,
    KK_ARROWDOWN,
    KK_ARROWLEFT,
    KK_ARROWRIGHT,
    KK_NPDIVIDE,
    KK_NPMULTIPLY,
    KK_NPMINUS,
    KK_NP7,
    KK_NP8,
    KK_NP9,
    KK_PLUS,
    KK_NP4,
    KK_NP5,
    KK_NP6,
    KK_NP1,
    KK_NP2,
    KK_NP3,
    KK_NP0,
    KK_NPPERIOD,
    KK_AT,
    KK_BACKSPACE1,
    KK_MAX,
};

class IOsEventExtension : public IExtension {
public:
    virtual void OnPointerButton(eOsPointerState state, int x, int y) = 0;
    virtual void OnKeyDown(eOsKeyboardKey keyCode) = 0;
    virtual void OnKeyUp(eOsKeyboardKey keyCode) = 0;
};

class OsEvent {
public:
    static void InitialiseMods();
    static void InstallMods();
    static void InitialiseExtensions();
    static void AddExtension(IOsEventExtension* extension);
};

void ShowKeyboard();
void HideKeyboard();

inline bool IsKeyboardShown() {
    return *reinterpret_cast<int*>(GameAddress + GAME_ADDR_KEYBOARDWASVISIBLE);
}

} // namespace Luna::Engine::Game
