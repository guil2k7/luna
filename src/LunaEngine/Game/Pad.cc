// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Game/Pad.hh>
#include <LunaEngine/Game/Addresses.hh>
#include <LunaEngine/Game/Main.hh>
#include <LunaEngine/Helpers.hh>
#include <LunaEngine/Hooker.hh>

using namespace LunaEngine;
using namespace LunaEngine::Game;

CSimplePad* CSimplePad::CurrentPad = nullptr;

static struct {
    int (LUNA_THISCALL *GetPedWalkLeftRight)(CPad*);
    int (LUNA_THISCALL *GetPedWalkUpDown)(CPad*);
    bool (LUNA_THISCALL *GetSprint)(CPad*);
    bool (LUNA_THISCALL *GetJump)(CPad*);
    int (LUNA_THISCALL *JumpJustDown)(CPad*);
    int (LUNA_THISCALL *GetAutoClimb)(CPad*);
    bool (LUNA_THISCALL *DiveJustDown)(CPad*);
    int (LUNA_THISCALL *SwimJumpJustDown)(CPad*);
    int (LUNA_THISCALL *MeleeAttackJustDown)(CPad*);
    int (LUNA_THISCALL *GetAbortClimb)(CPad*);
    int (LUNA_THISCALL *DuckJustDown)(CPad*);
    int (LUNA_THISCALL *GetBlock)(CPad*);
    int (LUNA_THISCALL *GetSteeringLeftRight)(CPad*);
    int (LUNA_THISCALL *GetSteeringUpDown)(CPad*);
    int (LUNA_THISCALL *GetAccelerate)(CPad*);
    int (LUNA_THISCALL *GetBrake)(CPad*);
    int (LUNA_THISCALL *GetHandBrake)(CPad*);
    int (LUNA_THISCALL *GetHorn)(CPad*);
    int (LUNA_THISCALL *ExitVehicleJustDown)(CPad* self, bool checkTouch, void* vehicle, bool entering, CVector* vecVehicle);
} trampoline;

static LUNA_THISCALL int Hook_GetPedWalkLeftRight(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetPedWalkLeftRight(self);

    return CSimplePad::CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetPedWalkUpDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetPedWalkUpDown(self);

    return CSimplePad::CurrentPad->UpDown;
}

static LUNA_THISCALL bool Hook_GetSprint(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetSprint(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SPRINT);
}

static LUNA_THISCALL bool Hook_GetJump(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetJump(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_JumpJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.JumpJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_GetAutoClimb(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetAutoClimb(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static bool LUNA_THISCALL Hook_DiveJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.DiveJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_SwimJumpJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.SwimJumpJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_MeleeAttackJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return CallMethod<int>(GameAddress + 0x40B00D, self);        

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_GetAbortClimb(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetAbortClimb(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_DuckJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.DuckJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_GetBlock(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return CallMethod<int>(GameAddress + 0x40B321, self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_HANDBRAKE);
}

static LUNA_THISCALL int Hook_GetSteeringLeftRight(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetSteeringLeftRight(self);

    return CSimplePad::CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetSteeringUpDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetSteeringUpDown(self);

    return CSimplePad::CurrentPad->UpDown;
}

static LUNA_THISCALL int Hook_GetAccelerate(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetAccelerate(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SPRINT) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetBrake(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetBrake(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHandBrake(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetHandBrake(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_HANDBRAKE) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHorn(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.GetHorn(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_ExitVehicleJustDown(CPad* self, bool checkTouch, void* vehicle, bool entering, CVector* vecVehicle) {
    if (CSimplePad::CurrentPad == nullptr)
        return trampoline.ExitVehicleJustDown(self, checkTouch, vehicle, entering, vecVehicle);

    return 0;
}

void CPad::InjectPatchesAndHooks() {
    trampoline.GetPedWalkLeftRight = CHooker(GameAddress + GAME_ADDR_CPAD_GETPEDWALKLEFTRIGHT, Hook_GetPedWalkLeftRight, true).Hook();
    trampoline.GetPedWalkUpDown = CHooker(GameAddress + GAME_ADDR_CPAD_GETPEDWALKUPDOWN, Hook_GetPedWalkUpDown, true).Hook();
    trampoline.GetSprint = CHooker(GameAddress + GAME_ADDR_CPAD_GETSPRINT, Hook_GetSprint, true).Hook();
    trampoline.GetJump = CHooker(GameAddress + GAME_ADDR_CPAD_GETJUMP, Hook_GetJump, true).Hook();
    trampoline.JumpJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_JUMPJUSTDOWN, Hook_JumpJustDown, true).Hook();
    trampoline.GetAutoClimb = CHooker(GameAddress + GAME_ADDR_CPAD_GETAUTOCLIMB, Hook_GetAutoClimb, true).Hook();
    trampoline.DiveJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_DIVEJUSTDOWN, Hook_DiveJustDown, true).Hook();
    trampoline.SwimJumpJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_SWIMJUMPJUSTDOWN, Hook_SwimJumpJustDown, true).Hook();
    trampoline.MeleeAttackJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_MELEEATTACKJUSTDOWN, Hook_MeleeAttackJustDown, true).Hook();
    trampoline.GetAbortClimb = CHooker(GameAddress + GAME_ADDR_CPAD_GETABORTCLIMB, Hook_GetAbortClimb, true).Hook();
    trampoline.DuckJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_DUCKJUSTDOWN, Hook_DuckJustDown, true).Hook();
    trampoline.GetBlock = CHooker(GameAddress + GAME_ADDR_CPAD_GETBLOCK, Hook_GetBlock, true).Hook();
    trampoline.GetSteeringLeftRight = CHooker(GameAddress + GAME_ADDR_CPAD_GETSTEERINGLEFTRIGHT, Hook_GetSteeringLeftRight, true).Hook();
    trampoline.GetSteeringUpDown = CHooker(GameAddress + GAME_ADDR_CPAD_GETSTEERINGUPDOWN, Hook_GetSteeringUpDown, true).Hook();
    trampoline.GetAccelerate = CHooker(GameAddress + GAME_ADDR_CPAD_GETACCELERATE, Hook_GetAccelerate, true).Hook();
    trampoline.GetBrake = CHooker(GameAddress + GAME_ADDR_CPAD_GETBRAKE, Hook_GetBrake, true).Hook();
    trampoline.GetHandBrake = CHooker(GameAddress + GAME_ADDR_CPAD_GETHANDBRAKE, Hook_GetHandBrake, true).Hook();
    trampoline.GetHorn = CHooker(GameAddress + GAME_ADDR_CPAD_GETHORN, Hook_GetHorn, true).Hook();
    trampoline.ExitVehicleJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_EXITVEHICLEJUSTDOWN, Hook_ExitVehicleJustDown, true).Hook();
}
