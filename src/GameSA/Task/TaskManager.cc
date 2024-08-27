// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/GameSA/Task/TaskManager.hh>
#include <Luna/GameSA/Main.hh>
#include <Luna/Core/Helpers.hh>

using namespace Luna::Core;
using namespace Luna::GameSA;

void CTaskManager::SetTask(CTask* task, int index, bool unk) {
    CallMethod<void, CTask*, int, bool>(GameAddress + 0x54397B, this, task, index, unk);
}
