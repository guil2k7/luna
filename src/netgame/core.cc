// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/class.hh>
#include <luna/netgame/core.hh>
#include <luna/netcode/core.hh>
#include <luna/serde/bitSerde.hh>

using namespace luna;
using namespace luna::net;
using namespace luna::netgame;
using namespace luna::serde;

void Core::processInitGame(void* userData, Client& client, uint8_t const* rawData, size_t bitSize) {
    BitDeserialiser deserialiser(rawData, bitSize);

    netcode::InitGame data;
    data.deserialise(deserialiser);

    Luna::s_instance->classManager->setNumberOfClasses(data.spawnsAvailable);
    Luna::s_instance->classManager->handleClassSelection();
}

void Core::install() {
    Luna::s_instance->client->registerHandlerForRPC(netcode::InitGame::PACKET_ID, { processInitGame, static_cast<void*>(this) });

    Luna::s_instance->core = this;
}
