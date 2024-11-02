// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../game/vector.hh"
#include "../net/packet.hh"
#include "../serde/serde.hh"
#include <string>
#include <cstdint>

namespace luna::netcode {

struct __attribute__((packed)) TextDrawAttributes {
    uint16_t id;

    struct {
        bool box : 1;
        bool left : 1;
        bool right : 1;
        bool center : 1;
        bool proportional : 1;
        uint8_t padding : 3;
    };

    float letterWidth;
    float letterHeight;
    unsigned int letterColor;
    float lineWidth;
    float lineHeight;
    unsigned int boxColor;
    unsigned char shadow;
    unsigned char outline;
    unsigned int backgroundColor;
    unsigned char style;
    unsigned char selectable;
    float x;
    float y;
    unsigned short model;
    game::Vector rotation;
    float zoom;
    unsigned short color1;
    unsigned short color2;
};

struct TextDrawShow final : public serde::IDeserialisable, public TextDrawAttributes {
    LUNA_DEFINE_PACKET(true, 134)

    void deserialise(serde::IDeserialiser& deserialiser);

    std::string text;
};

inline void TextDrawShow::deserialise(serde::IDeserialiser& deserialiser) {
    deserialiser.deserialiseBytes(
        reinterpret_cast<uint8_t*>(
            static_cast<TextDrawAttributes*>(this)),
        sizeof(TextDrawAttributes)
    );

    uint16_t textLength = deserialiser.deserialiseU16();

    text.resize(textLength);

    deserialiser.deserialiseBytes(reinterpret_cast<uint8_t*>(text.data()), textLength);
}

} // namespace luna::netcode
