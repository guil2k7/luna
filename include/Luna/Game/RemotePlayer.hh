// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Luna.hh"
#include "../GameSA/PlayerPed.hh"

namespace Luna::Game::Packets {

class CFootSync;

} // namespace Luna::Game::Packets

namespace Luna::Game {

class CRemotePlayer;

class CRemotePlayerManager {
public:
    void Install();

private:
    static void ProcessFootSync(void* userData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);
    static void ProcessServerJoin(void* userData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);

    CRemotePlayer* GetPlayer(int id);
};

class CRemotePlayer final : public GameSA::CPlayerPed {
public:
    void SyncFoot(Packets::CFootSync& data);

private:
    void CheckPosition(GameSA::CVector expPosition);
};

static_assert(sizeof (CRemotePlayer) <= GameSA::MAX_CPLAYERPED_SIZE);

} // namespace Luna::Game
