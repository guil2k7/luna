// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/GameSA/Main.hh>
#include <Luna/GameSA/Pad.hh>
#include <Luna/GameSA/PlayerPed.hh>
#include <Luna/GameSA/World.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

static struct {
    void            (LUNA_STDCALL   *SetupPlayerPed)                (int);
    CPlayerPed*     (LUNA_THISCALL  *Constructor)                   (CPlayerPed*, int, bool);
    CPlayerInfo*    (LUNA_THISCALL  *GetPlayerInfoForThisPlayerPed) (CPlayerPed*);
    void            (LUNA_THISCALL  *ProcessControl)                (CPlayerPed*);
} Trampoline;

void CPlayerPed::InstallMods() {
    Trampoline.SetupPlayerPed = TakeAndReplace(GameAddress + 0x67E7AC, CPlayerPed::SetupPlayerPed);

    Trampoline.Constructor = TakeAndReplace(
        GameAddress + 0x67F260,
        GetMethodPointer(&CPlayerPed::Constructor)
    );

    // vtable
    TakeAndReplace(
        GameAddress + 0x68560C,
        GetMethodPointer(&CPlayerPed::Constructor)
    );

    Trampoline.GetPlayerInfoForThisPlayerPed = TakeAndReplace(
        GameAddress + 0x680068,
        GetMethodPointer(&CPlayerPed::GetPlayerInfoForThisPlayerPed)
    );

    // vtable
    Trampoline.ProcessControl = TakeAndReplace(
        GameAddress + 0x6792A4,
        GetMethodPointer(&CPlayerPed::ProcessControl)
    );
}

CPlayerPed* CPlayerPed::Create(int id, bool groupCreated) {
    CPlayerPed* instance = reinterpret_cast<CPlayerPed*>(::operator new(sizeof (CPlayerPed)));
    instance->Constructor(id, groupCreated);

    return instance;
}

void CPlayerPed::Destroy(CPlayerPed* instance) {
    CallMethod<void>(GameAddress + 0x4D3901, instance);
    ::operator delete(instance);
}

void CPlayerPed::SetupPlayerPed(int id) {
    Trampoline.SetupPlayerPed(id);

    if (id > 1) {
        CPlayerPed* player = CWorld::GetPlayerPed(id);
        player->m_PedType = PEDTYPE_PLAYER2;
    }
}

CPlayerPed* CPlayerPed::Constructor(int id, bool groupCreated) {
    Trampoline.Constructor(this, id, groupCreated);

    m_ID = id;
    m_RemotePad.id = id;

    return this;
}

CPlayerInfo* CPlayerPed::GetPlayerInfoForThisPlayerPed() {
    return &CWorld::GetPlayers()[m_ID];
}

void CPlayerPed::ProcessControl() {
    CPad::SetRemotePadAsCurrent(&m_RemotePad);

    Trampoline.ProcessControl(this);

    m_RemotePad.ClearKeys();
}
