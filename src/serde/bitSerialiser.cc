// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/serde/bitSerde.hh>
#include <cstring>

using namespace luna;
using namespace luna::serde;

class NoBytesLeftException : public SerdeException {
public:
    char const* what() const noexcept {
        return "no bytes left to serialise";
    }
};

void BitSerialiser::serialiseBits(uint8_t const* bits, size_t lengthInBits) {
#ifndef NDEBUG
    if (bitsToBytes(m_offsetInBits + lengthInBits) > m_capacity)
        throw NoBytesLeftException();
#endif

    size_t offsetMod8 = m_offsetInBits % 8;
    size_t bitsToWrite = lengthInBits;
    size_t writtenBits = 0;

    while (bitsToWrite > 0) {
        uint8_t byte = bits[writtenBits >> 3];

        if (bitsToWrite < 8)
            byte <<= 8 - bitsToWrite;

        if (offsetMod8 != 0) {
            m_data[m_offsetInBits >> 3] |= byte >> offsetMod8;

            if (8 - offsetMod8 < bitsToWrite)
                m_data[(m_offsetInBits >> 3) + 1] = byte << (8 - offsetMod8);
        } else {
            m_data[m_offsetInBits >> 3] = byte;
        }

        if (bitsToWrite >= 8) {
            m_offsetInBits += 8;
            writtenBits += 8;
            bitsToWrite -= 8;
        } else {
            m_offsetInBits += bitsToWrite;
            writtenBits += bitsToWrite;
            bitsToWrite = 0;
        }
    }
}

void BitSerialiser::serialiseBytes(uint8_t const* bytes, size_t length) {
    if ((m_offsetInBits % 8) != 0)
        return serialiseBits(bytes, length * 8);

#ifndef NDEBUG
    if (bitsToBytes(m_offsetInBits) + length > m_capacity)
        throw NoBytesLeftException();
#endif

    memcpy(m_data + (m_offsetInBits >> 3), bytes, length);
    m_offsetInBits += length * 8;
}

void BitSerialiser::serialiseBool(bool value) {
#ifndef NDEBUG
    if (bitsToBytes(m_offsetInBits + 1) > m_capacity)
        throw NoBytesLeftException();
#endif

    size_t offsetMod8 = m_offsetInBits % 8;

    if (value) {
        if (offsetMod8 == 0)
            m_data[m_offsetInBits >> 3] = 0x80;
        else
            m_data[m_offsetInBits >> 3] |= 0x80 >> offsetMod8;
    } else {
        if (offsetMod8 == 0)
            m_data[m_offsetInBits >> 3] = 0;
        else
            m_data[m_offsetInBits >> 3] &= ~(0x80 >> offsetMod8);
    }

    m_offsetInBits += 1;
}
