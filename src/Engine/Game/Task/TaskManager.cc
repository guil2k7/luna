// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Game/Task/TaskManager.hh>
#include <Luna/Engine/Main.hh>
#include <Luna/Engine/Helpers.hh>

using namespace Luna::Engine;
using namespace Luna::Engine::Game;

void CTaskManager::SetTask(CTask* task, int index, bool unk) {
    CallMethod<void, CTask*, int, bool>(GameAddress + 0x54397B, this, task, index, unk);
}
