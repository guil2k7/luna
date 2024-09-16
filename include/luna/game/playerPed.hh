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

    inline PlayerPed(int id, bool forReply) {
        initialise(id, forReply);
    }

    inline virtual ~PlayerPed() override {
        core::callMethod<void>(g_gameAddress + 0x4D3901, this);
    }

    inline virtual void processControl() override {
        return core::callMethod<void>(g_gameAddress + 0x4D47E9, this);
    }

    inline virtual void setMoveAnim() override {
        return core::callMethod<void>(g_gameAddress + 0x4DA6D9, this);
    }

    inline virtual bool save() override {
        return core::callMethod<bool>(g_gameAddress + 0x495163, this);
    }

    inline virtual bool load() override {
        return core::callMethod<bool>(g_gameAddress + 0x4951E9, this);
    }

    PlayerInfo* playerInfo();

    inline int id() const {
        return m_id;
    }

private:
    /// Initialises the player ped and returns it.
    PlayerPed* initialise(int id, bool forReply);

    PADDING(8);

    int m_id;
};

static_assert(sizeof(PlayerPed) >= MIN_PLAYERPED_SIZE && sizeof(PlayerPed) <= MAX_PLAYERPED_SIZE);

} // namespace luna::game
