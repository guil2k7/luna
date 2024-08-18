// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/Pad.hh>
#include <Luna/Engine/Game/World.hh>
#include <Luna/Engine/Hooker.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

static struct {
    void            (LUNA_STDCALL   *SetupPlayerPed)                (int);
    CPlayerPed*     (LUNA_THISCALL  *Constructor)                   (CPlayerPed*, int, bool);
    CPlayerInfo*    (LUNA_THISCALL  *GetPlayerInfoForThisPlayerPed) (CPlayerPed*);
    void            (LUNA_THISCALL  *ProcessControl)                (CPlayerPed*);
} Trampoline;

void CPlayerPed::InstallMods() {
    Trampoline.SetupPlayerPed = CHooker(
        GameAddress + GAME_ADDR_CPLAYERPED_SETUPPLAYERPED, CPlayerPed::SetupPlayerPed, true).Hook();

    Trampoline.Constructor = CHooker<decltype(Trampoline.Constructor)>(
        GameAddress + GAME_ADDR_CPLAYERPED_CONSTRUCTOR,
        GetMethodPointer(&CPlayerPed::Constructor),
        true
    ).Hook();

    Trampoline.GetPlayerInfoForThisPlayerPed = CHooker<decltype(Trampoline.GetPlayerInfoForThisPlayerPed)>(
        GameAddress + GAME_ADDR_CPLAYERPED_GETPLAYERINFOFORTHISPLAYERPED,
        GetMethodPointer(&CPlayerPed::GetPlayerInfoForThisPlayerPed),
        true
    ).Hook();

    Trampoline.ProcessControl = CHooker<decltype(Trampoline.ProcessControl)>(
        GameAddress + GAME_ADDR_CPLAYERPED_PROCESSCONTROL,
        GetMethodPointer(&CPlayerPed::ProcessControl),
        true
    ).Hook();
}

CPlayerPed* CPlayerPed::Create(int id, bool groupCreated) {
    CPlayerPed* instance = reinterpret_cast<CPlayerPed*>(::operator new(sizeof (CPlayerPed)));

    CallMethod<CPlayerPed*, int, bool>(
        GameAddress + GAME_ADDR_CPLAYERPED_CONSTRUCTOR,
        instance, id, groupCreated
    );

    return instance;
}

void CPlayerPed::Destroy(CPlayerPed* instance) {
    CallMethod<void>(GameAddress + GAME_ADDR_CPLAYERPED_DESTRUCTOR, instance);
    ::operator delete(instance);
}

void CPlayerPed::SetupPlayerPed(int id) {
    Trampoline.SetupPlayerPed(id);

    if (id > 1)
        CWorld::Players()[id].Ped->m_PedType = PEDTYPE_PLAYER_NETWORK;
}

CPlayerPed* CPlayerPed::Constructor(int id, bool groupCreated) {
    Trampoline.Constructor(this, id, groupCreated);

    m_ID = id;

    return this;
}

CPlayerInfo* CPlayerPed::GetPlayerInfoForThisPlayerPed() {
    return &CWorld::Players()[m_ID];
}

void CPlayerPed::ProcessControl() {
    CSimplePad::SetCurrentFromID(m_ID);

    Trampoline.ProcessControl(this);

    CSimplePad::CurrentPad = nullptr;
}
