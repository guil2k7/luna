// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "ped.hh"

namespace luna::game {

constexpr size_t MIN_PLAYERPED_SIZE = 1964;
constexpr size_t MAX_PLAYERPED_SIZE = 1996;

class PlayerInfo;

class PlayerPed : public Ped {
public:
    static void installMods();
    static void setupPlayerPed(int id);

    /// Initialises the player ped and returns it.
    PlayerPed* initialise(int id, bool forReply);

    PlayerInfo* playerInfo();

    inline int id() const {
        return m_id;
    }

private:
    PADDING(8);

    int m_id;
};

static_assert(sizeof(PlayerPed) >= MIN_PLAYERPED_SIZE && sizeof(PlayerPed) <= MAX_PLAYERPED_SIZE);

} // namespace luna::game
