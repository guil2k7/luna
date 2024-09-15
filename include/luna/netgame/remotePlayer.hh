// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "luna.hh"
#include "../game/playerPed.hh"

namespace luna::netcode {

class FootSync;

} // namespace luna::netcode

namespace luna::netgame {

class CRemotePlayer;

class RemotePlayerManager {
public:
    void install();

private:
    static void processFootSync(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize);
    static void processServerJoin(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize);

    CRemotePlayer* getPlayer(int id);
};

class CRemotePlayer final : public game::PlayerPed {
public:
    void syncFoot(netcode::FootSync& data);

private:
    void checkPosition(game::Vector expPosition);
};

static_assert(sizeof(CRemotePlayer) <= game::MAX_PLAYERPED_SIZE);

} // namespace luna::netgame
