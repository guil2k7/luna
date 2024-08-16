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

CPad* CPad::LocalPad = nullptr;
CPad* CPad::CurrentPad = nullptr;

static struct {
    int (LUNA_THISCALL *GetPedWalkLeftRight)(CSAPad*);
    int (LUNA_THISCALL *GetPedWalkUpDown)(CSAPad*);
    bool (LUNA_THISCALL *GetSprint)(CSAPad*);
    bool (LUNA_THISCALL *GetJump)(CSAPad*);
    int (LUNA_THISCALL *JumpJustDown)(CSAPad*);
    int (LUNA_THISCALL *GetAutoClimb)(CSAPad*);
    bool (LUNA_THISCALL *DiveJustDown)(CSAPad*);
    int (LUNA_THISCALL *SwimJumpJustDown)(CSAPad*);
    int (LUNA_THISCALL *MeleeAttackJustDown)(CSAPad*);
    int (LUNA_THISCALL *GetAbortClimb)(CSAPad*);
    int (LUNA_THISCALL *DuckJustDown)(CSAPad*);
    int (LUNA_THISCALL *GetBlock)(CSAPad*);
    int (LUNA_THISCALL *GetSteeringLeftRight)(CSAPad*);
    int (LUNA_THISCALL *GetSteeringUpDown)(CSAPad*);
    int (LUNA_THISCALL *GetAccelerate)(CSAPad*);
    int (LUNA_THISCALL *GetBrake)(CSAPad*);
    int (LUNA_THISCALL *GetHandBrake)(CSAPad*);
    int (LUNA_THISCALL *GetHorn)(CSAPad*);
    int (LUNA_THISCALL *ExitVehicleJustDown)(CSAPad*, bool, void*, bool, void const*);
} trampoline;

static LUNA_THISCALL int Hook_GetPedWalkLeftRight(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad)
        CPad::CurrentPad->LeftRight = trampoline.GetPedWalkLeftRight(self);

    return CPad::CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetPedWalkUpDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad)
        CPad::CurrentPad->UpDown = trampoline.GetPedWalkUpDown(self);

    return CPad::CurrentPad->UpDown;
}

static LUNA_THISCALL bool Hook_GetSprint(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        bool val = trampoline.GetSprint(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_SPRINT;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_SPRINT);
}

static LUNA_THISCALL bool Hook_GetJump(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        bool val = trampoline.GetJump(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_JUMP;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_JumpJustDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.JumpJustDown(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_JUMP;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_GetAutoClimb(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.GetAutoClimb(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_JUMP;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_JUMP);
}

static bool LUNA_THISCALL Hook_DiveJustDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        bool val = trampoline.DiveJustDown(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_SECONDARY_ATTACK;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_SwimJumpJustDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.SwimJumpJustDown(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_JUMP;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_MeleeAttackJustDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = CallFunction<int>(GameAddress + 0x40B00D, self);        
        // int val = trampoline.MeleeAttackJustDown(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_SECONDARY_ATTACK;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_GetAbortClimb(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.GetAbortClimb(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_SECONDARY_ATTACK;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL int Hook_DuckJustDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.DuckJustDown(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_CROUCH;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_GetBlock(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = CallFunction<int>(GameAddress + 0x40B321, self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_HANDBRAKE;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_HANDBRAKE);
}

static LUNA_THISCALL int Hook_GetSteeringLeftRight(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad)
        CPad::CurrentPad->LeftRight = trampoline.GetSteeringLeftRight(self);

    return CPad::CurrentPad->LeftRight;
}

static LUNA_THISCALL int Hook_GetSteeringUpDown(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad)
        CPad::CurrentPad->UpDown = trampoline.GetSteeringUpDown(self);

    return CPad::CurrentPad->UpDown;
}

static LUNA_THISCALL int Hook_GetAccelerate(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.GetAccelerate(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_SPRINT;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_SPRINT) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetBrake(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.GetBrake(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_JUMP;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_JUMP) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHandBrake(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.GetHandBrake(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_HANDBRAKE;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_HANDBRAKE) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHorn(CSAPad* self) {
    if (CPad::CurrentPad == CPad::LocalPad) {
        int val = trampoline.GetHorn(self);

        if (val)
            CPad::CurrentPad->Keys |= PAD_KEY_CROUCH;

        return val;
    }

    return CPad::CurrentPad->IsKeyPressed(PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_ExitVehicleJustDown(CSAPad* self, bool param1, void* param2, bool param3, void const* param4) {
    if (CPad::CurrentPad == CPad::LocalPad)
        return trampoline.ExitVehicleJustDown(self, param1, param2, param3, param4);

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
