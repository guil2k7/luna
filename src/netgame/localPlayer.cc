// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/localPlayer.hh>
#include <luna/core/helpers.hh>
#include <luna/game/pad.hh>
#include <cstring>

using namespace luna::core;
using namespace luna::game;
using namespace luna::netgame;

static PedVtable* g_localPlayerVtable = nullptr;
static void (LUNA_THISCALL *g_PlayerPed_processControl)(void* thiz) = nullptr;

LocalPlayer* LocalPlayer::initialise(int id, bool forReply) {
    PlayerPed::initialise(id, forReply);

    if (g_localPlayerVtable == nullptr) {
        g_localPlayerVtable = new PedVtable();
        memcpy(g_localPlayerVtable, g_gameAddress + 0x679278, sizeof (PedVtable));

        g_PlayerPed_processControl = g_localPlayerVtable->processControl;
        g_localPlayerVtable->processControl = getMethodPointer2(&LocalPlayer::processControl);
    }

    m_vtable = g_localPlayerVtable;
    m_remotePad.id = id;

    return this;
}

void LocalPlayer::processControl() {
    Pad::setRemotePadAsCurrent(&m_remotePad);
    g_PlayerPed_processControl(this);
}
