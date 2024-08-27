// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/GameSA/Task/TaskSimplePlayerOnFoot.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/Core/Helpers.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

CTaskSimplePlayerOnFoot* CTaskSimplePlayerOnFoot::Create() {
    auto self = CTask::operator new(sizeof (CTaskSimplePlayerOnFoot));

    CallMethod<void*>(GameAddress + 0x547551, self);

    return reinterpret_cast<CTaskSimplePlayerOnFoot*>(self);
}
