// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "dma.hh"
#include "RW/rwplcore.h"

namespace Luna::GameSA {

class CFont {
public:
    static void PrintString(float x, float y, GxtChar const* characters);
    static void SetAlphaFade(float alpha);
    static void SetBackground(bool background, bool outline);
    static void SetBackgroundColor(RwRGBA const* color);
    static void SetCentreSize(float x);
    static void SetColor(RwRGBA const* color);
    static void SetDropColor(RwRGBA const* color);
    static void SetDropShadowPosition(int8_t amount);
    static void SetEdge(int8_t amount);
    static void SetFontStyle(uint8_t newStyle);
    static void SetJustify(bool justify);
    static void SetOrientation(uint8_t orientation);
    static void SetProportional(bool proportional);
    static void SetRightJustifyWrap(float wrap);
    static void SetScale(float height);
    static void SetSlant(float angle);
    static void SetSlantRefPoint(float x, float y);
    static void SetWrapx(float x);
};

} // namespace Luna::GameSA
