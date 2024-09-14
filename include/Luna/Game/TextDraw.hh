// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Luna.hh"
#include "Packets/TextDraw.hh"

namespace Luna::Game {

typedef Packets::CTextDrawShow CTextDraw;

class CTextDrawManager {
public:
    CTextDrawManager();

    void Install();

    void Insert(CTextDraw* textDraw);
    void Render();

private:
    CTextDraw** m_Chunks;
    size_t m_ChunksCount;

    static void ProcessShow(void* userData, Net::CClient& client, uint8_t const* rawData, size_t bitSize);
};

} // namespace Luna::Game
