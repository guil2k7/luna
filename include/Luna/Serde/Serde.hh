// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <exception>
#include <cstdint>
#include <cstddef>

namespace Luna::Serde {

class CSerdeException : public std::exception {};

class ISerialiser;
class IDeserialiser;

class ISerialisable {
public:
    virtual void Serialise(ISerialiser& serialiser) const = 0;
};

class IDeserialisable {
public:
    virtual void Deserialise(IDeserialiser& deserialiser) = 0;
};

template<typename T>
inline void Serialise(ISerialiser& serialiser, T const& object) {
    object.Serialise(serialiser);
}

template<typename T>
inline void Deserialise(IDeserialiser& deserialiser, T& object) {
    object.Deserialise(deserialiser);
}

template<>
inline void Serialise(ISerialiser& serialiser, ISerialisable const& object) {
    object.Serialise(serialiser);
}

template<>
inline void Deserialise(IDeserialiser& deserialiser, IDeserialisable& object) {
    object.Deserialise(deserialiser);
}

class ISerialiser {
public:
    virtual void SerialiseBytes(uint8_t const* bytes, size_t length) = 0;
    virtual void SerialiseBool(bool value) = 0;
    virtual void SerialiseU8(uint8_t value) = 0;
    virtual void SerialiseU16(uint16_t value) = 0;
    virtual void SerialiseU32(uint32_t value) = 0;
    virtual void SerialiseU64(uint64_t value) = 0;
    virtual void SerialiseI8(int8_t value) = 0;
    virtual void SerialiseI16(int16_t value) = 0;
    virtual void SerialiseI32(int32_t value) = 0;
    virtual void SerialiseI64(int64_t value) = 0;
    virtual void SerialiseF32(float value) = 0;
    virtual void SerialiseF64(double value) = 0;
    virtual size_t OffsetInBytes() const = 0;

    template<typename T>
    inline void Serialise(T const& object) {
        Luna::Serde::Serialise(*this, object);
    }
};

class IDeserialiser {
public:
    virtual void DeserialiseBytes(uint8_t* dest, size_t length) = 0;
    virtual void SkipBytes(size_t count) = 0;
    virtual bool DeserialiseBool() = 0;
    virtual uint8_t DeserialiseU8() = 0;
    virtual uint16_t DeserialiseU16() = 0;
    virtual uint32_t DeserialiseU32() = 0;
    virtual uint64_t DeserialiseU64() = 0;
    virtual int8_t DeserialiseI8() = 0;
    virtual int16_t DeserialiseI16() = 0;
    virtual int32_t DeserialiseI32() = 0;
    virtual int64_t DeserialiseI64() = 0;
    virtual float DeserialiseF32() = 0;
    virtual double DeserialiseF64() = 0;
    virtual size_t OffsetInBytes() const = 0;

    template<typename T>
    inline void Deserialise(T& object) {
        Luna::Serde::Deserialise(*this, object);
    }

    void DeserialiseNormQuat(float& w, float& x, float& y, float& z);
    void DeserialiseCompressedVec(float& x, float& y, float& z);

    inline float DeserialiseCompressedF32() {
        return static_cast<float>(DeserialiseU16()) / 32767.5F - 1.0f;
    }
};

} // namespace Luna::Serde
