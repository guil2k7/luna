// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Game/Radar.hh>
#include <Luna/Engine/Game/Addresses.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CRadar::DrawAreaOnRadar(CRect* rect, RwRGBA* rgba, bool fullMap) {
    CallFunction<void>(GameAddress + GAME_ADDR_CRADAR_DRAWAREAONRADAR, rect, rgba, fullMap);
}

void CRadar::ChangeBlipScale(int id, int newScale) {
    CallFunction<void>(GameAddress + GAME_ADDR_CRADAR_CHANGEBLIPSCALE, id, newScale);
}

void CRadar::ChangeBlipColour(int id, uint32_t newColour) {
    CallFunction<void>(GameAddress + GAME_ADDR_CRADAR_CHANGEBLIPCOLOUR, id, newColour);
}

int CRadar::SetCoordBlip(eBlipType blpType, CVector position, uint32_t colour, eBlipDisplay dispFlag, char const* scriptName) {
    return CallMethod<int>(GameAddress + GAME_ADDR_CRADAR_SETCOORDBLIP, this, blpType, position, colour, dispFlag, scriptName);
}
