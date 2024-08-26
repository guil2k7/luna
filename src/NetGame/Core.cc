// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/Core.hh>
#include <Luna/NetGame/Class.hh>
#include <Luna/Net/Code/Player.hh>

using namespace Luna;
using namespace Luna::Net;
using namespace Luna::NetGame;

void CCore::ProcessInitGame(void* UserData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Context->ClassManager->HandleClassSelection();
}

void CCore::Install() {
    Context->Client->RegisterHandlerForRPC(Code::CInitGame::PACKET_ID, {
        ProcessInitGame,
        static_cast<void*>(this)
    });

    Context->Core = this;
}
