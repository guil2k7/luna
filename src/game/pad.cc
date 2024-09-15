// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/pad.hh>
#include <luna/game/main.hh>
#include <luna/core/helpers.hh>

using namespace luna::core;
using namespace luna::netgame;
using namespace luna::game;

static struct {
    int (LUNA_THISCALL* getPedWalkLeftRight)(Pad*);
    int (LUNA_THISCALL* getPedWalkUpDown)(Pad*);
    bool (LUNA_THISCALL* getSprint)(Pad*);
    bool (LUNA_THISCALL* getJump)(Pad*);
    bool (LUNA_THISCALL* jumpJustDown)(Pad*);
    bool (LUNA_THISCALL* getAutoClimb)(Pad*);
    bool (LUNA_THISCALL* diveJustDown)(Pad*);
    bool (LUNA_THISCALL* swimJumpJustDown)(Pad*);
    int (LUNA_THISCALL* meleeAttackJustDown)(Pad*);
    bool (LUNA_THISCALL* getAbortClimb)(Pad*);
    bool (LUNA_THISCALL* duckJustDown)(Pad*);
    int (LUNA_THISCALL* getBlock)(Pad*);
    int (LUNA_THISCALL* getSteeringLeftRight)(Pad*);
    int (LUNA_THISCALL* getSteeringUpDown)(Pad*);
    int (LUNA_THISCALL* getAccelerate)(Pad*);
    int (LUNA_THISCALL* getBrake)(Pad*);
    int (LUNA_THISCALL* getHandBrake)(Pad*);
    bool (LUNA_THISCALL* getHorn)(Pad*);
} trampoline;

static RemotePad* currentRemotePad = nullptr;

void Pad::setRemotePadAsCurrent(RemotePad* pad) {
    currentRemotePad = pad;
}

static LUNA_THISCALL int hook_GetPedWalkLeftRight(Pad* self) {
    if (currentRemotePad->id == 0)
        currentRemotePad->leftRight = trampoline.getPedWalkLeftRight(self);

    return currentRemotePad->leftRight;
}

static LUNA_THISCALL int hook_GetPedWalkUpDown(Pad* self) {
    if (currentRemotePad->id == 0)
        currentRemotePad->upDown = trampoline.getPedWalkUpDown(self);

    return currentRemotePad->upDown;
}

static LUNA_THISCALL bool hook_GetSprint(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.getSprint(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_SPRINT);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_SPRINT);
}

static LUNA_THISCALL bool hook_GetJump(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.getJump(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static LUNA_THISCALL bool hook_JumpJustDown(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.jumpJustDown(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static LUNA_THISCALL bool hook_GetAutoClimb(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.getAutoClimb(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static bool LUNA_THISCALL hook_DiveJustDown(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.diveJustDown(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_SECONDARY_ATTACK);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL bool hook_SwimJumpJustDown(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.swimJumpJustDown(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_JUMP);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_JUMP);
}

static LUNA_THISCALL int hook_MeleeAttackJustDown(Pad* self) {
    if (currentRemotePad->id == 0) {
        int val = trampoline.meleeAttackJustDown(self);

        if (val != 0)
            currentRemotePad->pressKey(REMOTE_PAD_KEY_SECONDARY_ATTACK);

        return val;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL bool hook_GetAbortClimb(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.getAbortClimb(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_SECONDARY_ATTACK);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_SECONDARY_ATTACK);
}

static LUNA_THISCALL bool hook_DuckJustDown(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.duckJustDown(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_CROUCH);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_CROUCH);
}

static LUNA_THISCALL int hook_GetBlock(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.getBlock(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_HANDBRAKE);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_HANDBRAKE);
}

static LUNA_THISCALL int hook_GetSteeringLeftRight(Pad* self) {
    if (currentRemotePad->id == 0)
        currentRemotePad->leftRight = trampoline.getSteeringLeftRight(self);

    return currentRemotePad->leftRight;
}

static LUNA_THISCALL int hook_GetSteeringUpDown(Pad* self) {
    if (currentRemotePad->id == 0)
        currentRemotePad->upDown = trampoline.getSteeringUpDown(self);

    return currentRemotePad->upDown;
}

static LUNA_THISCALL int hook_GetAccelerate(Pad* self) {
    if (currentRemotePad->id == 0) {
        int val = trampoline.getAccelerate(self);

        if (val != 0)
            currentRemotePad->pressKey(REMOTE_PAD_KEY_SPRINT);

        return val;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_SPRINT) ? 0xFF : 0;
}

static LUNA_THISCALL int hook_GetBrake(Pad* self) {
    if (currentRemotePad->id == 0) {
        int val = trampoline.getBrake(self);

        if (val != 0)
            currentRemotePad->pressKey(REMOTE_PAD_KEY_JUMP);

        return val;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_JUMP) ? 0xFF : 0;
}

static LUNA_THISCALL int hook_GetHandBrake(Pad* self) {
    if (currentRemotePad->id == 0) {
        int val = trampoline.getHandBrake(self);

        if (val != 0)
            currentRemotePad->pressKey(REMOTE_PAD_KEY_HANDBRAKE);

        return val;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_HANDBRAKE) ? 0xFF : 0;
}

static LUNA_THISCALL bool hook_GetHorn(Pad* self) {
    if (currentRemotePad->id == 0) {
        if (trampoline.getHorn(self)) {
            currentRemotePad->pressKey(REMOTE_PAD_KEY_CROUCH);
            return true;
        }

        return false;
    }

    return currentRemotePad->isKeyPressed(REMOTE_PAD_KEY_CROUCH);
}

void Pad::installMods() {
    trampoline.getPedWalkLeftRight = takeAndReplace(GAME_ADDRESS + 0x681018, hook_GetPedWalkLeftRight);
    trampoline.getPedWalkUpDown = takeAndReplace(GAME_ADDRESS + 0x6806E0, hook_GetPedWalkUpDown);
    trampoline.getSprint = takeAndReplace(GAME_ADDRESS + 0x680CEC, hook_GetSprint);
    trampoline.getJump = takeAndReplace(GAME_ADDRESS + 0x67FAE0, hook_GetJump);
    trampoline.jumpJustDown = takeAndReplace(GAME_ADDRESS + 0x680280, hook_JumpJustDown);
    trampoline.getAutoClimb = takeAndReplace(GAME_ADDRESS + 0x684A08, hook_GetAutoClimb);
    trampoline.diveJustDown = takeAndReplace(GAME_ADDRESS + 0x682FE0, hook_DiveJustDown);
    trampoline.swimJumpJustDown = takeAndReplace(GAME_ADDRESS + 0x684054, hook_SwimJumpJustDown);
    trampoline.meleeAttackJustDown = takeAndReplace(GAME_ADDRESS + 0x681280, hook_MeleeAttackJustDown);
    trampoline.getAbortClimb = takeAndReplace(GAME_ADDRESS + 0x6818E8, hook_GetAbortClimb);
    trampoline.duckJustDown = takeAndReplace(GAME_ADDRESS + 0x6827D8, hook_DuckJustDown);
    trampoline.getBlock = takeAndReplace(GAME_ADDRESS + 0x67FAD8, hook_GetBlock);
    trampoline.getSteeringLeftRight = takeAndReplace(GAME_ADDRESS + 0x683D9C, hook_GetSteeringLeftRight);
    trampoline.getSteeringUpDown = takeAndReplace(GAME_ADDRESS + 0x682C20, hook_GetSteeringUpDown);
    trampoline.getAccelerate = takeAndReplace(GAME_ADDRESS + 0x684834, hook_GetAccelerate);
    trampoline.getBrake = takeAndReplace(GAME_ADDRESS + 0x67EBD4, hook_GetBrake);
    trampoline.getHandBrake = takeAndReplace(GAME_ADDRESS + 0x680530, hook_GetHandBrake);
    trampoline.getHorn = takeAndReplace(GAME_ADDRESS + 0x683020, hook_GetHorn);
}
