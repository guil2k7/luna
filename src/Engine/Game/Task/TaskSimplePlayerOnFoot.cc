// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Task/TaskSimplePlayerOnFoot.hh>
#include <Luna/Engine/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

CTaskSimplePlayerOnFoot* CTaskSimplePlayerOnFoot::Create() {
    auto self = CTask::operator new(sizeof (CTaskSimplePlayerOnFoot));

    CallMethod<void*>(GameAddress + 0x547551, self);

    return reinterpret_cast<CTaskSimplePlayerOnFoot*>(self);
}
