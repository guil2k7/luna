// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Serde.hh"

namespace Luna::Serde {

static inline size_t BitsToBytes(size_t value) {
    return (value + 7) >> 3;
}

static inline size_t BytesToBits(size_t value) {
    return value << 3;
}

class CBitSerialiser final : public ISerialiser {
public:
    CBitSerialiser(uint8_t* data, size_t capacity) :
        m_Data(data), m_Capacity(capacity), m_OffsetInBits(0) {}

    void SerialiseBits(uint8_t const* bits, size_t lengthInBits);
    void SerialiseBytes(uint8_t const* bytes, size_t length);
    void SerialiseBool(bool value);

    inline void SerialiseU8(uint8_t value)   { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 1); }
    inline void SerialiseU16(uint16_t value) { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 2); }
    inline void SerialiseU32(uint32_t value) { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 4); }
    inline void SerialiseU64(uint64_t value) { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 8); }
    inline void SerialiseI8(int8_t value)    { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 1); }
    inline void SerialiseI16(int16_t value)  { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 2); }
    inline void SerialiseI32(int32_t value)  { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 4); }
    inline void SerialiseI64(int64_t value)  { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 8); }
    inline void SerialiseF32(float value)    { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 4); }
    inline void SerialiseF64(double value)   { SerialiseBytes(reinterpret_cast<uint8_t*>(&value), 8); }

    inline size_t OffsetInBytes() const {
        return BitsToBytes(m_OffsetInBits);
    }

    inline size_t OffsetInBits() const {
        return m_OffsetInBits;
    }

private:
    uint8_t* m_Data;
    size_t m_Capacity;
    size_t m_OffsetInBits;
};

class CBitDeserialiser final : public IDeserialiser {
public:
    CBitDeserialiser(uint8_t const* data, size_t lengthInBits) :
        m_Data(data), m_DataSizeInBits(lengthInBits), m_OffsetInBits(0) {}

    void DeserialiseBits(uint8_t* dest, size_t lengthInBits);
    void DeserialiseBytes(uint8_t* dest, size_t length);
    void SkipBytes(size_t count);
    bool DeserialiseBool();

    inline uint8_t DeserialiseU8()   { uint8_t x;  DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 1); return x; }
    inline uint16_t DeserialiseU16() { uint16_t x; DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 2); return x; }
    inline uint32_t DeserialiseU32() { uint32_t x; DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 4); return x; }
    inline uint64_t DeserialiseU64() { uint64_t x; DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 8); return x; }
    inline int8_t DeserialiseI8()    { int8_t x;   DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 1); return x; }
    inline int16_t DeserialiseI16()  { int16_t x;  DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 2); return x; }
    inline int32_t DeserialiseI32()  { int32_t x;  DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 4); return x; }
    inline int64_t DeserialiseI64()  { int64_t x;  DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 8); return x; }
    inline float DeserialiseF32()    { float x;    DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 4); return x; }
    inline double DeserialiseF64()   { double x;   DeserialiseBytes(reinterpret_cast<uint8_t*>(&x), 8); return x; }

    inline size_t OffsetInBytes() const {
        return BitsToBytes(m_OffsetInBits);
    }

    inline size_t OffsetInBits() const {
        return m_OffsetInBits;
    }

private:
    uint8_t const* m_Data;
    size_t m_DataSizeInBits;
    size_t m_OffsetInBits;
};

} // namespace Luna::Serde
