// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Helpers.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/Pad.hh>

using namespace Luna::Core;
using namespace Luna::Game;
using namespace Luna::GameSA;

static struct {
    int (LUNA_THISCALL *GetPedWalkLeftRight)(CPad*);
    int (LUNA_THISCALL *GetPedWalkUpDown)(CPad*);
    bool (LUNA_THISCALL *GetSprint)(CPad*);
    bool (LUNA_THISCALL *GetJump)(CPad*);
    bool (LUNA_THISCALL *JumpJustDown)(CPad*);
    bool (LUNA_THISCALL *GetAutoClimb)(CPad*);
    bool (LUNA_THISCALL *DiveJustDown)(CPad*);
    bool (LUNA_THISCALL *SwimJumpJustDown)(CPad*);
    int (LUNA_THISCALL *MeleeAttackJustDown)(CPad*);
    bool (LUNA_THISCALL *GetAbortClimb)(CPad*);
    bool (LUNA_THISCALL *DuckJustDown)(CPad*);
    int (LUNA_THISCALL *GetBlock)(CPad*);
    int (LUNA_THISCALL *GetSteeringLeftRight)(CPad*);
    int (LUNA_THISCALL *GetSteeringUpDown)(CPad*);
    int (LUNA_THISCALL *GetAccelerate)(CPad*);
    int (LUNA_THISCALL *GetBrake)(CPad*);
    int (LUNA_THISCALL *GetHandBrake)(CPad*);
    bool (LUNA_THISCALL *GetHorn)(CPad*);
} Trampoline;

static CRemotePad* CurrentRemotePad = nullptr;

void CPad::SetRemotePadAsCurrent(CRemotePad* pad) {
    CurrentRemotePad = pad;
}

static LUNA_THISCALL int Hook_GetPedWalkLeftRight(CPad* self) {
    if (CurrentRemotePad->id == 0)
        CurrentRemotePad->LeftRight = Trampoline.GetPedWalkLeftRight(self);

    return CurrentRemotePad->LeftRight;
}

static LUNA_THISCALL int Hook_GetPedWalkUpDown(CPad* self) {
    if (CurrentRemotePad->id == 0)
        CurrentRemotePad->UpDown = Trampoline.GetPedWalkUpDown(self);

    return CurrentRemotePad->UpDown;
}

static LUNA_THISCALL bool Hook_GetSprint(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.GetSprint(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_SPRINT);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_SPRINT);
}

static LUNA_THISCALL bool Hook_GetJump(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.GetJump(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static LUNA_THISCALL bool Hook_JumpJustDown(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.JumpJustDown(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static LUNA_THISCALL bool Hook_GetAutoClimb(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.GetAutoClimb(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static bool LUNA_THISCALL Hook_DiveJustDown(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.DiveJustDown(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_SECONDARY_ATTACK);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL bool Hook_SwimJumpJustDown(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.SwimJumpJustDown(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int Hook_MeleeAttackJustDown(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        int val = Trampoline.MeleeAttackJustDown(self);

        if (val != 0)
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_SECONDARY_ATTACK);

        return val;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL bool Hook_GetAbortClimb(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.GetAbortClimb(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_SECONDARY_ATTACK);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL bool Hook_DuckJustDown(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.DuckJustDown(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_CROUCH);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int Hook_GetBlock(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.GetBlock(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_HANDBRAKE);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_HANDBRAKE);
}

static LUNA_THISCALL int Hook_GetSteeringLeftRight(CPad* self) {
    if (CurrentRemotePad->id == 0)
        CurrentRemotePad->LeftRight = Trampoline.GetSteeringLeftRight(self);

    return CurrentRemotePad->LeftRight;
}

static LUNA_THISCALL int Hook_GetSteeringUpDown(CPad* self) {
    if (CurrentRemotePad->id == 0)
        CurrentRemotePad->UpDown = Trampoline.GetSteeringUpDown(self);

    return CurrentRemotePad->UpDown;
}

static LUNA_THISCALL int Hook_GetAccelerate(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        int val = Trampoline.GetAccelerate(self);

        if (val != 0)
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_SPRINT);

        return val;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_SPRINT) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetBrake(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        int val = Trampoline.GetBrake(self);

        if (val != 0)
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_JUMP);

        return val;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_JUMP) ? 0xFF : 0;
}

static LUNA_THISCALL int Hook_GetHandBrake(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        int val = Trampoline.GetHandBrake(self);

        if (val != 0)
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_HANDBRAKE);

        return val;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_HANDBRAKE) ? 0xFF : 0;
}

static LUNA_THISCALL bool Hook_GetHorn(CPad* self) {
    if (CurrentRemotePad->id == 0) {
        if (Trampoline.GetHorn(self)) {
            CurrentRemotePad->PressKey(REMOTE_PAD_KEY_CROUCH);
            return true;
        }

        return false;
    }

    return CurrentRemotePad->IsKeyPressed(REMOTE_PAD_KEY_CROUCH);
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
}
