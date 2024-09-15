// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "rect.hh"
#include "vector.hh"
#include "rw/rwplcore.h"

namespace luna::game {

enum BlipType {
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

enum BlipDisplay {
    BLIPDISPLAY_NEITHER,
    BLIPDISPLAY_MARKERONLY,
    BLIPDISPLAY_BLIPONLY,
    BLIPDISPLAY_BOTH,
};

class Radar {
public:
    Radar() = delete;
    ~Radar() = delete;

    static void drawAreaOnRadar(Rect* rect, RwRGBA* rgba, bool fullMap);
    static void changeBlipScale(int id, int newScale);
    static void changeBlipColour(int id, uint32_t newColour);

    /// Returns the blip ID.
    int setCoordBlip(BlipType blpType, Vector position, uint32_t colour, BlipDisplay dispFlag, char const* scriptName);
};

} // namespace luna::game
