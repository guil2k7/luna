// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/serde/bitSerde.hh>
#include <cstring>

using namespace luna;
using namespace luna::serde;

class NoBitsLeftException : public SerdeException {
public:
    char const* what() const noexcept {
        return "no bits left to deserialise/skip";
    }
};

void BitDeserialiser::deserialiseBits(uint8_t* dest, size_t lengthInBits, bool alignBitsToRight) {
    if (m_offsetInBits + lengthInBits > m_dataSizeInBits)
        throw NoBitsLeftException();

    size_t offsetMod8 = m_offsetInBits % 8;
    size_t bitsToRead = lengthInBits;
    size_t readBits = 0;

    while (bitsToRead > 0) {
        dest[readBits >> 3] = m_data[m_offsetInBits >> 3] << offsetMod8;

        if (offsetMod8 > 0 && bitsToRead > 8 - offsetMod8)
            dest[readBits >> 3] |= m_data[(m_offsetInBits >> 3) + 1] >> (8 - offsetMod8);

        if (bitsToRead >= 8) {
            m_offsetInBits += 8;
            readBits += 8;
            bitsToRead -= 8;
        } else {
            if (alignBitsToRight)
                dest[readBits >> 3] >>= bitsToRead;

            m_offsetInBits += bitsToRead;
            readBits += bitsToRead;
            bitsToRead = 0;
        }
    }
}

void BitDeserialiser::deserialiseBytes(uint8_t* dest, size_t length) {
    if ((m_offsetInBits % 8) != 0)
        return deserialiseBits(dest, length * 8);

    #ifndef NDEBUG
    if (m_offsetInBits + length * 8 > m_dataSizeInBits)
        throw NoBitsLeftException();
    #endif

    memcpy(dest, m_data + (m_offsetInBits >> 3), length);
    m_offsetInBits += length * 8;
}

void BitDeserialiser::deserialiseBytesCompressed(uint8_t* dest, size_t length) {
    int currentByte = length - 1;

    uint8_t byteMatch = 0;
    uint8_t halfByteMatch = 0;

    while (currentByte > 0) {
        if (deserialiseBool())
            dest[currentByte--] = byteMatch;
        else
            return deserialiseBits(dest, (currentByte + 1) << 3);
    }

    if (deserialiseBool()) {
        deserialiseBits(dest + currentByte, 4);
        dest[currentByte] |= halfByteMatch;
    } else {
        deserialiseBits(dest + currentByte, 8);
    }
}

void BitDeserialiser::skipBytes(size_t count) {
    if (m_offsetInBits + count * 8 > m_dataSizeInBits)
        throw NoBitsLeftException();

    m_offsetInBits += count * 8;
}

bool BitDeserialiser::deserialiseBool() {
    if (m_offsetInBits >= m_dataSizeInBits)
        throw NoBitsLeftException();

    bool value = static_cast<bool>(m_data[m_offsetInBits >> 3] & (0x80 >> (m_offsetInBits % 8)));
    m_offsetInBits += 1;

    return value;
}
