// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "dma.hh"
#include "rw/rwplcore.h"

namespace luna::game {

class Font {
public:
    static void printString(float x, float y, GxtChar const* characters);
    static void setAlphaFade(float alpha);
    static void setBackground(bool background, bool outline);
    static void setBackgroundColor(RwRGBA const* color);
    static void setCentreSize(float x);
    static void setColor(RwRGBA const* color);
    static void setDropColor(RwRGBA const* color);
    static void setDropShadowPosition(int8_t amount);
    static void setEdge(int8_t amount);
    static void setFontStyle(uint8_t newStyle);
    static void setJustify(bool justify);
    static void setOrientation(uint8_t orientation);
    static void setProportional(bool proportional);
    static void setRightJustifyWrap(float wrap);
    static void setScale(float height);
    static void setSlant(float angle);
    static void setSlantRefPoint(float x, float y);
    static void setWrapx(float x);
};

} // namespace luna::game
