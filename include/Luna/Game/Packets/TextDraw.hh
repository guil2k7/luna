// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../../GameSA/Vector.hh"
#include "../../GameSA/Vector.hh"
#include "../../Net/Packet.hh"
#include "../../Serde/Serde.hh"
#include <string>
#include <cstdint>

namespace Luna::Game::Packets {

struct __attribute__((packed)) CTextDrawBase {
    uint16_t ID;

    struct {
        bool Box : 1;
        bool Left : 1;
        bool Right : 1;
        bool Center : 1;
        bool Proportional : 1;
        uint8_t Padding : 3;
    };

    float LetterWidth;
    float LetterHeight;
    unsigned int LetterColor;
    float LineWidth;
    float LineHeight;
    unsigned int BoxColor;
    unsigned char Shadow;
    unsigned char Outline;
    unsigned int BackgroundColor;
    unsigned char Style;
    unsigned char Selectable;
    float X;
    float Y;
    unsigned short Model;
    GameSA::CVector Rotation;
    float Zoom;
    unsigned short Color1;
    unsigned short Color2;
};

struct CTextDrawShow final : public Serde::IDeserialisable, public CTextDrawBase {
    LUNA_DEFINE_PACKET(true, 134)

    void Deserialise(Serde::IDeserialiser& deserialiser) {
        deserialiser.DeserialiseBytes(
            reinterpret_cast<uint8_t*>(
                static_cast<CTextDrawBase*>(this)),
            sizeof (CTextDrawBase)
        );

        uint16_t textLength = deserialiser.DeserialiseU16();

        Text.resize(textLength);

        deserialiser.DeserialiseBytes(reinterpret_cast<uint8_t*>(Text.data()), textLength);
    }

    std::string Text;
};

} // namespace Luna::Game::Packets
