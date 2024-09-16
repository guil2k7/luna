// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "serde.hh"

namespace luna::serde {

inline static size_t bitsToBytes(size_t value) {
    return (value + 7) >> 3;
}

inline static size_t bytesToBits(size_t value) {
    return value << 3;
}

class BitSerialiser final : public ISerialiser {
public:
    BitSerialiser(uint8_t* data, size_t capacity)
        : m_data(data)
        , m_capacity(capacity)
        , m_offsetInBits(0)
    {}

    void serialiseBits(uint8_t const* bits, size_t lengthInBits);
    void serialiseBytes(uint8_t const* bytes, size_t length);
    void serialiseBool(bool value);

    inline void serialiseU8(uint8_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 1);
    }

    inline void serialiseU16(uint16_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 2);
    }

    inline void serialiseU32(uint32_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 4);
    }

    inline void serialiseU64(uint64_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 8);
    }

    inline void serialiseI8(int8_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 1);
    }

    inline void serialiseI16(int16_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 2);
    }

    inline void serialiseI32(int32_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 4);
    }

    inline void serialiseI64(int64_t value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 8);
    }

    inline void serialiseF32(float value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 4);
    }

    inline void serialiseF64(double value) {
        serialiseBytes(reinterpret_cast<uint8_t*>(&value), 8);
    }

    inline size_t offsetInBytes() const {
        return bitsToBytes(m_offsetInBits);
    }

    inline size_t offsetInBits() const {
        return m_offsetInBits;
    }

private:
    uint8_t* m_data;
    size_t m_capacity;
    size_t m_offsetInBits;
};

class BitDeserialiser final : public IDeserialiser {
public:
    BitDeserialiser(uint8_t const* data, size_t lengthInBits)
        : m_data(data)
        , m_dataSizeInBits(lengthInBits)
        , m_offsetInBits(0)
    {}

    void deserialiseBits(uint8_t* dest, size_t lengthInBits, bool alignBitsToRight = true);
    void deserialiseBytes(uint8_t* dest, size_t length);
    void deserialiseBytesCompressed(uint8_t* dest, size_t length);
    void skipBytes(size_t count);
    bool deserialiseBool();

    inline uint8_t deserialiseU8() {
        uint8_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 1);
        return value;
    }

    inline uint16_t deserialiseU16() {
        uint16_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 2);
        return value;
    }

    inline uint32_t deserialiseU32() {
        uint32_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 4);
        return value;
    }

    inline uint64_t deserialiseU64() {
        uint64_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 8);
        return value;
    }

    inline int8_t deserialiseI8() {
        int8_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 1);
        return value;
    }

    inline int16_t deserialiseI16() {
        int16_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 2);
        return value;
    }

    inline int32_t deserialiseI32() {
        int32_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 4);
        return value;
    }

    inline int64_t deserialiseI64() {
        int64_t value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 8);
        return value;
    }

    inline float deserialiseF32() {
        float value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 4);
        return value;
    }

    inline double deserialiseF64() {
        double value;
        deserialiseBytes(reinterpret_cast<uint8_t*>(&value), 8);
        return value;
    }

    inline size_t offsetInBytes() const {
        return bitsToBytes(m_offsetInBits);
    }

    inline size_t offsetInBits() const {
        return m_offsetInBits;
    }

private:
    uint8_t const* m_data;
    size_t m_dataSizeInBits;
    size_t m_offsetInBits;
};

} // namespace luna::serde
