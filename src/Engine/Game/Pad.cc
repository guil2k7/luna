// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/Addresses.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Helpers.hh>
#include <Luna/Engine/Hooker.hh>

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

CSimplePad* CSimplePad::CurrentPad = nullptr;

static CSimplePad* SimplePads = nullptr;

CSimplePad* CSimplePad::GetFromID(int id) {
    return &SimplePads[id];
}

void CSimplePad::SetCurrentFromID(int id) {
    CurrentPad = &SimplePads[id];
}

static LUNA_THISCALL int Hook_GetPedWalkLeftRight(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetPedWalkLeftRight(self);

    return CSimplePad::CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetPedWalkUpDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetPedWalkUpDown(self);

    return CSimplePad::CurrentPad->UpDown;
}

static LUNA_THISCALL bool Hook_GetSprint(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetSprint(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SPRINT);
}

static LUNA_THISCALL bool Hook_GetJump(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetJump(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_JumpJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.JumpJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_GetAutoClimb(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetAutoClimb(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static bool LUNA_THISCALL Hook_DiveJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.DiveJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_SwimJumpJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.SwimJumpJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_MeleeAttackJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return CallMethod<int>(GameAddress + 0x40B00D, self);        

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_GetAbortClimb(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetAbortClimb(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_DuckJustDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.DuckJustDown(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_GetBlock(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return CallMethod<int>(GameAddress + 0x40B321, self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_HANDBRAKE);
}

static LUNA_THISCALL int Hook_GetSteeringLeftRight(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetSteeringLeftRight(self);

    return CSimplePad::CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetSteeringUpDown(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetSteeringUpDown(self);

    return CSimplePad::CurrentPad->UpDown;
}

static LUNA_THISCALL int Hook_GetAccelerate(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetAccelerate(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_SPRINT) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetBrake(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetBrake(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_JUMP) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHandBrake(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetHandBrake(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_HANDBRAKE) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHorn(CPad* self) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.GetHorn(self);

    return CSimplePad::CurrentPad->IsKeyPressed(SIMPLE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_ExitVehicleJustDown(CPad* self, bool checkTouch, void* vehicle, bool entering, CVector* vecVehicle) {
    if (CSimplePad::CurrentPad == nullptr)
        return Trampoline.ExitVehicleJustDown(self, checkTouch, vehicle, entering, vecVehicle);

    return 0;
}

void CPad::InitialiseMods() {
    SimplePads = new CSimplePad[1000];
}

void CPad::InstallMods() {
    Trampoline.GetPedWalkLeftRight = CHooker(GameAddress + GAME_ADDR_CPAD_GETPEDWALKLEFTRIGHT, Hook_GetPedWalkLeftRight, true).Hook();
    Trampoline.GetPedWalkUpDown = CHooker(GameAddress + GAME_ADDR_CPAD_GETPEDWALKUPDOWN, Hook_GetPedWalkUpDown, true).Hook();
    Trampoline.GetSprint = CHooker(GameAddress + GAME_ADDR_CPAD_GETSPRINT, Hook_GetSprint, true).Hook();
    Trampoline.GetJump = CHooker(GameAddress + GAME_ADDR_CPAD_GETJUMP, Hook_GetJump, true).Hook();
    Trampoline.JumpJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_JUMPJUSTDOWN, Hook_JumpJustDown, true).Hook();
    Trampoline.GetAutoClimb = CHooker(GameAddress + GAME_ADDR_CPAD_GETAUTOCLIMB, Hook_GetAutoClimb, true).Hook();
    Trampoline.DiveJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_DIVEJUSTDOWN, Hook_DiveJustDown, true).Hook();
    Trampoline.SwimJumpJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_SWIMJUMPJUSTDOWN, Hook_SwimJumpJustDown, true).Hook();
    Trampoline.MeleeAttackJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_MELEEATTACKJUSTDOWN, Hook_MeleeAttackJustDown, true).Hook();
    Trampoline.GetAbortClimb = CHooker(GameAddress + GAME_ADDR_CPAD_GETABORTCLIMB, Hook_GetAbortClimb, true).Hook();
    Trampoline.DuckJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_DUCKJUSTDOWN, Hook_DuckJustDown, true).Hook();
    Trampoline.GetBlock = CHooker(GameAddress + GAME_ADDR_CPAD_GETBLOCK, Hook_GetBlock, true).Hook();
    Trampoline.GetSteeringLeftRight = CHooker(GameAddress + GAME_ADDR_CPAD_GETSTEERINGLEFTRIGHT, Hook_GetSteeringLeftRight, true).Hook();
    Trampoline.GetSteeringUpDown = CHooker(GameAddress + GAME_ADDR_CPAD_GETSTEERINGUPDOWN, Hook_GetSteeringUpDown, true).Hook();
    Trampoline.GetAccelerate = CHooker(GameAddress + GAME_ADDR_CPAD_GETACCELERATE, Hook_GetAccelerate, true).Hook();
    Trampoline.GetBrake = CHooker(GameAddress + GAME_ADDR_CPAD_GETBRAKE, Hook_GetBrake, true).Hook();
    Trampoline.GetHandBrake = CHooker(GameAddress + GAME_ADDR_CPAD_GETHANDBRAKE, Hook_GetHandBrake, true).Hook();
    Trampoline.GetHorn = CHooker(GameAddress + GAME_ADDR_CPAD_GETHORN, Hook_GetHorn, true).Hook();
    Trampoline.ExitVehicleJustDown = CHooker(GameAddress + GAME_ADDR_CPAD_EXITVEHICLEJUSTDOWN, Hook_ExitVehicleJustDown, true).Hook();
}
