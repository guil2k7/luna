// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "ped.hh"
#include "../netgame/remotePad.hh"

namespace luna::game {

constexpr size_t MIN_PLAYERPED_SIZE = 1964;
constexpr size_t MAX_PLAYERPED_SIZE = 1996;

class PlayerInfo;

class PlayerPed : public Ped {
public:
    static void installMods();

    static PlayerPed* create(int id, bool groupCreated);
    static void destroy(PlayerPed* instance);
    static void setupPlayerPed(int id);

    PlayerInfo* playerInfo();
    void processControl();

    inline int id() const {
        return m_id;
    }

private:
    PlayerPed* constructor(int id, bool groupCreated);

    PADDING(8);

    int m_id;

protected:
    netgame::RemotePad m_remotePad;
};

static_assert(sizeof(PlayerPed) >= MIN_PLAYERPED_SIZE && sizeof(PlayerPed) <= MAX_PLAYERPED_SIZE);

} // namespace luna::game
