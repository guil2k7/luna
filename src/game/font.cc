// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/font.hh>
#include <luna/core/helpers.hh>
#include <luna/game/main.hh>

using namespace luna::core;
using namespace luna::game;

void Font::printString(float x, float y, GxtChar const* characters) {
    return callFunction<void>(g_gameAddress + 0x5BA201, x, y, characters);
}

void Font::setAlphaFade(float alpha) {
    return callFunction<void>(g_gameAddress + 0x5BB279, alpha);
}

void Font::setBackground(bool background, bool outline) {
    return callFunction<void>(g_gameAddress + 0x5BB331, background, outline);
}

void Font::setBackgroundColor(RwRGBA const* color) {
    return callFunction<void>(g_gameAddress + 0x5BB341, color);
}

void Font::setCentreSize(float x) {
    return callFunction<void>(g_gameAddress + 0x5BB259, x);
}

void Font::setColor(RwRGBA const* color) {
    return callFunction<void>(g_gameAddress + 0x5BB039, color);
}

void Font::setDropColor(RwRGBA const* color) {
    return callFunction<void>(g_gameAddress + 0x5BB289, color);
}

void Font::setDropShadowPosition(int8_t amount) {
    return callFunction<void>(g_gameAddress + 0x5B8ADD, amount);
}

void Font::setEdge(int8_t amount) {
    return callFunction<void>(g_gameAddress + 0x5BB2ED, amount);
}

void Font::setFontStyle(uint8_t newStyle) {
    return callFunction<void>(g_gameAddress + 0x5BB1BD, newStyle);
}

void Font::setJustify(bool justify) {
    return callFunction<void>(g_gameAddress + 0x5BB365, justify);
}

void Font::setOrientation(uint8_t orientation) {
    return callFunction<void>(g_gameAddress + 0x5BB375, orientation);
}

void Font::setProportional(bool proportional) {
    return callFunction<void>(g_gameAddress + 0x5BB321, proportional);
}

void Font::setRightJustifyWrap(float wrap) {
    return callFunction<void>(g_gameAddress + 0x5BB269, wrap);
}

void Font::setScale(float height) {
    return callFunction<void>(g_gameAddress + 0x5BB179, height);
}

void Font::setSlant(float angle) {
    return callFunction<void>(g_gameAddress + 0x5BB1AD, angle);
}

void Font::setSlantRefPoint(float x, float y) {
    return callFunction<void>(g_gameAddress + 0x5BB19D, x, y);
}

void Font::setWrapx(float x) {
    return callFunction<void>(g_gameAddress + 0x5BB249, x);
}
