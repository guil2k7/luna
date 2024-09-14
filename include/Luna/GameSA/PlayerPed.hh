// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Ped.hh"
#include "../Game/RemotePad.hh"

namespace Luna::GameSA {

constexpr size_t MIN_CPLAYERPED_SIZE = 1964;
constexpr size_t MAX_CPLAYERPED_SIZE = 1996;

class CPlayerInfo;

class CPlayerPed : public CPed {
public:
    static void InstallMods();

    static CPlayerPed* Create(int id, bool groupCreated);
    static void Destroy(CPlayerPed* instance);
    static void SetupPlayerPed(int id);

    CPlayerInfo* GetPlayerInfoForThisPlayerPed();
    void ProcessControl();

    inline int GetID() const {
        return m_ID;
    }

private:
    CPlayerPed* Constructor(int id, bool groupCreated);

    PADDING(8);

    int m_ID;

protected:
    Game::CRemotePad m_RemotePad;
};

static_assert(sizeof (CPlayerPed) >= MIN_CPLAYERPED_SIZE && sizeof (CPlayerPed) <= MAX_CPLAYERPED_SIZE);

} // namespace Luna::GameSA
