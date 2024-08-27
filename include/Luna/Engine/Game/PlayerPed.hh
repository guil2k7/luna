// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Pad.hh"
#include "Ped.hh"

namespace Luna::Engine::Game {

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

    inline CBasicPad& GetPad() {
        return m_Pad;
    }

private:
    CPlayerPed* Constructor(int id, bool groupCreated);

    PADDING(8);

    int m_ID;
    CBasicPad m_Pad;
};

static_assert(sizeof (CPlayerPed) >= 1964 && sizeof (CPlayerPed) <= 1996);

} // namespace Luna::Engine::Game
