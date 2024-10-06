// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "remotePad.hh"
#include "../game/playerPed.hh"

namespace luna::netcode {
    class FootSync;
} // luna::netcode

namespace luna::netgame {

class RemotePlayer : public game::PlayerPed {
public:
    static void registerNetworkCode();

    static RemotePlayer* create(int id);
    static void release(RemotePlayer* player);

    void processControl();
    void setRemoteData(netcode::FootSync& sync);

    RemotePad remotePad;

protected:
    /// Initialises the player object and returns it.
    RemotePlayer* initialise(int id);
};

static_assert(sizeof (RemotePlayer) <= game::MAX_PLAYERPED_SIZE);

} // namespace luna::netgame
