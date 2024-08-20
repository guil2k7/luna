// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

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
} Trampoline;

static CSimplePad* CurrentPad = nullptr;
static int CurrentPadID = 0;

static CSimplePad* SimplePads = nullptr;

CSimplePad* CSimplePad::GetFromID(int id) {
    return &SimplePads[id];
}

void CSimplePad::SetCurrentFromID(int id) {
    CurrentPad = &SimplePads[id];
    CurrentPadID = id;
}

static LUNA_THISCALL int Hook_GetPedWalkLeftRight(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetPedWalkLeftRight(self);

    return CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetPedWalkUpDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetPedWalkUpDown(self);

    return CurrentPad->UpDown;
}

static LUNA_THISCALL bool Hook_GetSprint(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetSprint(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SPRINT);
}

static LUNA_THISCALL bool Hook_GetJump(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetJump(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_JumpJustDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.JumpJustDown(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_GetAutoClimb(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetAutoClimb(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static bool LUNA_THISCALL Hook_DiveJustDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.DiveJustDown(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_SwimJumpJustDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.SwimJumpJustDown(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_MeleeAttackJustDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.MeleeAttackJustDown(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_GetAbortClimb(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetAbortClimb(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_DuckJustDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.DuckJustDown(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_GetBlock(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetBlock(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_HANDBRAKE);
}

static LUNA_THISCALL int Hook_GetSteeringLeftRight(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetSteeringLeftRight(self);

    return CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetSteeringUpDown(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetSteeringUpDown(self);

    return CurrentPad->UpDown;
}

static LUNA_THISCALL int Hook_GetAccelerate(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetAccelerate(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SPRINT) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetBrake(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetBrake(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHandBrake(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetHandBrake(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_HANDBRAKE) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHorn(CPad* self) {
    if (CurrentPadID == 0)
        return Trampoline.GetHorn(self);

    return CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_ExitVehicleJustDown(CPad* self, bool checkTouch, void* vehicle, bool entering, CVector* vecVehicle) {
    if (CurrentPadID == 0)
        return Trampoline.ExitVehicleJustDown(self, checkTouch, vehicle, entering, vecVehicle);

    return 0;
}

void CPad::InitialiseMods() {
    SimplePads = new CSimplePad[1000];
}

void CPad::InstallMods() {
    Trampoline.GetPedWalkLeftRight = TakeAndReplace(GameAddress + 0x681018, Hook_GetPedWalkLeftRight);
    Trampoline.GetPedWalkUpDown = TakeAndReplace(GameAddress + 0x6806E0, Hook_GetPedWalkUpDown);
    Trampoline.GetSprint = TakeAndReplace(GameAddress + 0x680CEC, Hook_GetSprint);
    Trampoline.GetJump = TakeAndReplace(GameAddress + 0x67FAE0, Hook_GetJump);
    Trampoline.JumpJustDown = TakeAndReplace(GameAddress + 0x680280, Hook_JumpJustDown);
    Trampoline.GetAutoClimb = TakeAndReplace(GameAddress + 0x684A08, Hook_GetAutoClimb);
    Trampoline.DiveJustDown = TakeAndReplace(GameAddress + 0x682FE0, Hook_DiveJustDown);
    Trampoline.SwimJumpJustDown = TakeAndReplace(GameAddress + 0x684054, Hook_SwimJumpJustDown);
    Trampoline.MeleeAttackJustDown = TakeAndReplace(GameAddress + 0x681280, Hook_MeleeAttackJustDown);
    Trampoline.GetAbortClimb = TakeAndReplace(GameAddress + 0x6818E8, Hook_GetAbortClimb);
    Trampoline.DuckJustDown = TakeAndReplace(GameAddress + 0x6827D8, Hook_DuckJustDown);
    Trampoline.GetBlock = TakeAndReplace(GameAddress + 0x67FAD8, Hook_GetBlock);
    Trampoline.GetSteeringLeftRight = TakeAndReplace(GameAddress + 0x683D9C, Hook_GetSteeringLeftRight);
    Trampoline.GetSteeringUpDown = TakeAndReplace(GameAddress + 0x682C20, Hook_GetSteeringUpDown);
    Trampoline.GetAccelerate = TakeAndReplace(GameAddress + 0x684834, Hook_GetAccelerate);
    Trampoline.GetBrake = TakeAndReplace(GameAddress + 0x67EBD4, Hook_GetBrake);
    Trampoline.GetHandBrake = TakeAndReplace(GameAddress + 0x680530, Hook_GetHandBrake);
    Trampoline.GetHorn = TakeAndReplace(GameAddress + 0x683020, Hook_GetHorn);
    Trampoline.ExitVehicleJustDown = TakeAndReplace(GameAddress + 0x67EB80, Hook_ExitVehicleJustDown);
}
