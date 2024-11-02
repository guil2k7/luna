// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "ped.hh"
#include "world.hh"

namespace luna::game {

constexpr size_t MIN_PLAYERPED_SIZE = 1964;
constexpr size_t MAX_PLAYERPED_SIZE = 1996;

typedef PedVtable PlayerPedVtable;

class PlayerPed : public Ped {
public:
    static void installMods();

    /// Returns the player info.
    inline PlayerInfo* info() {
        return &World::players()[m_id];
    }

    inline void processControl() {
        core::callMethod<void>(g_gameAddress + 0x4D47E9, this);
    }

    inline int id() const {
        return m_id;
    }

protected:
    static void setupPlayerPed(int id);

    /// Initialises the player object and returns it.
    PlayerPed* initialise(int id, bool forReply);

    /// Releases the memory used by the player.
    inline void deinitialise() {
        // PlayerPed::~PlayerPed()
        core::callMethod<void>(g_gameAddress + 0x4D3901, this);
    }

private:
    PADDING(8);

    int m_id;
};

static_assert(sizeof(PlayerPed) >= MIN_PLAYERPED_SIZE && sizeof(PlayerPed) <= MAX_PLAYERPED_SIZE);

} // namespace luna::game
