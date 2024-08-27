// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/Class.hh>
#include <Luna/Game/Core.hh>
#include <Luna/Game/Packets/Core.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Net;
using namespace Luna::Game;
using namespace Luna::Serde;

void CCore::ProcessInitGame(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CInitGame data;
    data.Deserialise(deserialiser);

    CLuna::Instance->ClassManager->SetNumberOfClasses(data.SpawnsAvailable);
    CLuna::Instance->ClassManager->HandleClassSelection();
}

void CCore::Install() {
    CLuna::Instance->Client->RegisterHandlerForRPC(Packets::CInitGame::PACKET_ID, {
        ProcessInitGame,
        static_cast<void*>(this)
    });

    CLuna::Instance->Core = this;
}
