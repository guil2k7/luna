// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "remotePad.hh"
#include "../game/playerPed.hh"
#include <chrono>

namespace luna::netgame {

class LocalPlayer : public game::PlayerPed {
public:
    static LocalPlayer* s_instance;

    static void registerNetworkCode();

    static LocalPlayer* create(int id);
    static void release(LocalPlayer* player);

    void processControl();

protected:
    /// Initialises the player object and returns it.
    LocalPlayer* initialise(int id);

    RemotePad m_remotePad;
    std::chrono::time_point<std::chrono::steady_clock> m_lastSync;
};

static_assert(sizeof (LocalPlayer) <= game::MAX_PLAYERPED_SIZE);

} // namespace luna::netgame
