// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/GameSA/Font.hh>
#include <Luna/GameSA/Main.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

void CFont::PrintString(float x, float y, GxtChar const* characters) {
    return CallFunction<void>(GameAddress + 0x5BA201, x, y, characters);
}

void CFont::SetAlphaFade(float alpha) {
    return CallFunction<void>(GameAddress + 0x5BB279, alpha);
}

void CFont::SetBackground(bool background, bool outline) {
    return CallFunction<void>(GameAddress + 0x5BB331, background, outline);
}

void CFont::SetBackgroundColor(RwRGBA const* color) {
    return CallFunction<void>(GameAddress + 0x5BB341, color);
}

void CFont::SetCentreSize(float x) {
    return CallFunction<void>(GameAddress + 0x5BB259, x);
}

void CFont::SetColor(RwRGBA const* color) {
    return CallFunction<void>(GameAddress + 0x5BB039, color);
}

void CFont::SetDropColor(RwRGBA const* color) {
    return CallFunction<void>(GameAddress + 0x5BB289, color);
}

void CFont::SetDropShadowPosition(int8_t amount) {
    return CallFunction<void>(GameAddress + 0x5B8ADD, amount);
}

void CFont::SetEdge(int8_t amount) {
    return CallFunction<void>(GameAddress + 0x5BB2ED, amount);
}

void CFont::SetFontStyle(uint8_t newStyle) {
    return CallFunction<void>(GameAddress + 0x5BB1BD, newStyle);
}

void CFont::SetJustify(bool justify) {
    return CallFunction<void>(GameAddress + 0x5BB365, justify);
}

void CFont::SetOrientation(uint8_t orientation) {
    return CallFunction<void>(GameAddress + 0x5BB375, orientation);
}

void CFont::SetProportional(bool proportional) {
    return CallFunction<void>(GameAddress + 0x5BB321, proportional);
}

void CFont::SetRightJustifyWrap(float wrap) {
    return CallFunction<void>(GameAddress + 0x5BB269, wrap);
}

void CFont::SetScale(float height) {
    return CallFunction<void>(GameAddress + 0x5BB179, height);
}

void CFont::SetSlant(float angle) {
    return CallFunction<void>(GameAddress + 0x5BB1AD, angle);
}

void CFont::SetSlantRefPoint(float x, float y) {
    return CallFunction<void>(GameAddress + 0x5BB19D, x, y);
}

void CFont::SetWrapx(float x) {
    return CallFunction<void>(GameAddress + 0x5BB249, x);
}
