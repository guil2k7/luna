// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/Radar.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

void CRadar::DrawAreaOnRadar(CRect* rect, RwRGBA* rgba, bool fullMap) {
    CallFunction<void>(GameAddress + 0x453C61, rect, rgba, fullMap);
}

void CRadar::ChangeBlipScale(int id, int newScale) {
    CallFunction<void>(GameAddress + 0x452B11, id, newScale);
}

void CRadar::ChangeBlipColour(int id, uint32_t newColour) {
    CallFunction<void>(GameAddress + 0x452A59, id, newColour);
}

int CRadar::SetCoordBlip(eBlipType blpType, CVector position, uint32_t colour, eBlipDisplay dispFlag, char const* scriptName) {
    return CallMethod<int>(GameAddress + 0x452771, this, blpType, position, colour, dispFlag, scriptName);
}
