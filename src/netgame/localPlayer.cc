// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/localPlayer.hh>
#include <luna/game/pad.hh>

using namespace luna::game;
using namespace luna::netgame;

LocalPlayer::LocalPlayer(int id, bool forReply)
    : PlayerPed(id, forReply)
{}

void LocalPlayer::processControl() {
    Pad::setRemotePadAsCurrent(&m_remotePad);

    PlayerPed::processControl();
}
