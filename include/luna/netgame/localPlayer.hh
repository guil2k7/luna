// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "remotePad.hh"
#include "../game/playerPed.hh"

namespace luna::netgame {

class LocalPlayer : public game::PlayerPed {
public:
    LocalPlayer(int id, bool forReply);

    void processControl() override;

protected:
    RemotePad m_remotePad;
};

static_assert(sizeof(LocalPlayer) <= game::MAX_PLAYERPED_SIZE);

} // namespace luna::netgame
