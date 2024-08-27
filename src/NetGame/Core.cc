// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/Core.hh>
#include <Luna/NetGame/Class.hh>
#include <Luna/NetGame/Packets/Core.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Net;
using namespace Luna::NetGame;
using namespace Luna::Serde;

void CCore::ProcessInitGame(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CInitGame data;
    data.Deserialise(deserialiser);

    Context->ClassManager->SetNumberOfClasses(data.SpawnsAvailable);
    Context->ClassManager->HandleClassSelection();
}

void CCore::Install() {
    Context->Client->RegisterHandlerForRPC(Packets::CInitGame::PACKET_ID, {
        ProcessInitGame,
        static_cast<void*>(this)
    });

    Context->Core = this;
}
