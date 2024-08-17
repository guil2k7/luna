// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/PlayerPed.hh>
#include <LunaEngine/Game/Pad.hh>
#include <LunaEngine/Game/World.hh>
#include <LunaEngine/Hooker.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

static struct {
    CPlayerPed* (LUNA_THISCALL *Constructor)(CPlayerPed*, int, bool);
    void (LUNA_STDCALL *SetupPlayerPed)(int);
    void (LUNA_THISCALL *ProcessControl)(CPlayerPed*);
    CPlayerInfo* (LUNA_THISCALL *GetPlayerInfoForThisPlayerPed)(CPlayerPed*);
} trampoline;

static LUNA_THISCALL CPlayerPed* Hook_Constructor(CPlayerPed* self, int id, bool groupCreated) {
    trampoline.Constructor(self, id, groupCreated);

    self->_Initialize(id);

    return self;
}

static LUNA_THISCALL void Hook_ProcessControl(CPlayerPed* self) {
    return self->ProcessControl();
}

static LUNA_THISCALL CPlayerInfo* Hook_GetPlayerInfoForThisPlayerPed(CPlayerPed* self) {
    return &CWorld::Players()[self->GetID()];
}

void CPlayerPed::SetupPlayerPed(int id) {
    trampoline.SetupPlayerPed(id);

    if (id > 1)
        CWorld::Players()[id].Ped->PedType = PED_TYPE_PLAYER_NETWORK;
}

CPlayerPed* CPlayerPed::Create(int id, bool groupCreated) {
    CPlayerPed* instance = reinterpret_cast<CPlayerPed*>(
        ::operator new(sizeof (CPlayerPed)));

    CallMethod<CPlayerPed*, int, bool>(
        GameAddress + GAME_ADDR_CPLAYERPED_CONSTRUCTOR,
        instance, id, groupCreated
    );

    return instance;
}

void CPlayerPed::Destroy(CPlayerPed* instance) {
    CallMethod<void>(GameAddress + 0x4D3901, instance);

    ::operator delete(instance);
}

void CPlayerPed::_Initialize(int id) {
    m_ID = id;
}

void CPlayerPed::ProcessControl() {
    CSimplePad::SetCurrentPadFromID(m_ID);
    trampoline.ProcessControl(this);
    CSimplePad::CurrentPad = nullptr;
}

void CPlayerPed::InjectPatchesAndHooks() {
    trampoline.Constructor = CHooker(GameAddress + GAME_ADDR_CPLAYERPED_CONSTRUCTOR, Hook_Constructor, true).Hook();
    trampoline.ProcessControl = CHooker(GameAddress + GAME_ADDR_CPLAYERPED_PROCESSCONTROL, Hook_ProcessControl, true).Hook();
    trampoline.GetPlayerInfoForThisPlayerPed = CHooker(GameAddress + GAME_ADDR_CPLAYERPED_GETPLAYERINFOFORTHISPLAYERPED, Hook_GetPlayerInfoForThisPlayerPed, true).Hook();
    trampoline.SetupPlayerPed = CHooker(GameAddress + GAME_ADDR_CPLAYERPED_SETUPPLAYERPED, CPlayerPed::SetupPlayerPed, true).Hook();
}
