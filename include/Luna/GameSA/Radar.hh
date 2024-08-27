// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Rect.hh"
#include "Vector.hh"
#include "RW/rwplcore.h"

namespace Luna::GameSA {

enum eBlipType {
    BLIPTYPE_UNUSED,
    BLIPTYPE_CAR,
    BLIPTYPE_CHAR,
    BLIPTYPE_OBJECT,
    BLIPTYPE_COORDS,
    BLIPTYPE_CONTACT,
    BLIPTYPE_SEARCHLIGHT,
    BLIPTYPE_PICKUP,
    BLIPTYPE_AIRSTRIP,
};

enum eBlipDisplay {
    BLIPDISPLAY_NEITHER,
    BLIPDISPLAY_MARKERONLY,
    BLIPDISPLAY_BLIPONLY,
    BLIPDISPLAY_BOTH,
};

class CRadar {
public:
    CRadar() = delete;
    ~CRadar() = delete;

    static void DrawAreaOnRadar(CRect* rect, RwRGBA* rgba, bool fullMap);
    static void ChangeBlipScale(int id, int newScale);
    static void ChangeBlipColour(int id, uint32_t newColour);

    /// Returns the blip ID.
    int SetCoordBlip(eBlipType blpType, CVector position, uint32_t colour, eBlipDisplay dispFlag, char const* scriptName);
};

} // namespace Luna::GameSA
