// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/radar.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>

using namespace luna::core;
using namespace luna::game;

void Radar::drawAreaOnRadar(Rect* rect, RwRGBA* rgba, bool fullMap) {
    callFunction<void>(GAME_ADDRESS + 0x453C61, rect, rgba, fullMap);
}

void Radar::changeBlipScale(int id, int newScale) {
    callFunction<void>(GAME_ADDRESS + 0x452B11, id, newScale);
}

void Radar::changeBlipColour(int id, uint32_t newColour) {
    callFunction<void>(GAME_ADDRESS + 0x452A59, id, newColour);
}

int Radar::setCoordBlip(BlipType blpType, Vector position, uint32_t colour, BlipDisplay dispFlag, char const* scriptName) {
    return callMethod<int>(GAME_ADDRESS + 0x452771, this, blpType, position, colour, dispFlag, scriptName);
}
