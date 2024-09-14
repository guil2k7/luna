// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/TextDraw.hh>
#include <Luna/GameSA/Font.hh>
#include <Luna/Serde/BitSerde.hh>

using namespace Luna;
using namespace Luna::Game;
using namespace Luna::GameSA;
using namespace Luna::Net;

#define CHUNK_SIZE 256

void CTextDrawManager::ProcessShow(void* userData, CClient& client, uint8_t const* rawData, size_t bitSize) {
    Serde::CBitDeserialiser deserialiser(rawData, bitSize);

    Packets::CTextDrawShow* data = new Packets::CTextDrawShow();
    data->Deserialise(deserialiser);

    CLuna::Instance->TextDraw->Insert(data);
}

CTextDrawManager::CTextDrawManager() {
    m_Chunks = new CTextDraw*[2];
    m_ChunksCount = 2;
}

void CTextDrawManager::Install() {
    CLuna::Instance->Client->RegisterHandlerForPacket(Packets::CTextDrawShow::PACKET_ID, {
        ProcessShow,
        static_cast<void*>(this)
    });

    CLuna::Instance->TextDraw = this;
}

void CTextDrawManager::Insert(CTextDraw* textDraw) {
    // TODO: remote this later?
    if (textDraw->ID >= 2304)
        return;
    
    size_t chunk = textDraw->ID >> 8;

    if (m_ChunksCount <= chunk) {
        
    }

    m_TextDraws[textDraw->ID] = textDraw;
    m_TextDraws.MarkIndexAsInitialised(textDraw->ID);
}

void CTextDrawManager::Render() {
    for ()
}
