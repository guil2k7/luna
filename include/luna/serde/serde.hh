// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include <cstddef>
#include <cstdint>
#include <exception>

namespace luna::serde {

class SerdeException : public std::exception { };

class ISerialiser;
class IDeserialiser;

class ISerialisable {
public:
    virtual void serialise(ISerialiser& serialiser) const = 0;
};

class IDeserialisable {
public:
    virtual void deserialise(IDeserialiser& deserialiser) = 0;
};

template <typename T>
inline void serialise(ISerialiser& serialiser, T const& object) {
    object.serialise(serialiser);
}

template <typename T>
inline void deserialise(IDeserialiser& deserialiser, T& object) {
    object.deserialise(deserialiser);
}

template <>
inline void serialise(ISerialiser& serialiser, ISerialisable const& object) {
    object.serialise(serialiser);
}

template <>
inline void deserialise(IDeserialiser& deserialiser, IDeserialisable& object) {
    object.deserialise(deserialiser);
}

class ISerialiser {
public:
    virtual void serialiseBytes(uint8_t const* bytes, size_t length) = 0;
    virtual void serialiseBool(bool value) = 0;
    virtual void serialiseU8(uint8_t value) = 0;
    virtual void serialiseU16(uint16_t value) = 0;
    virtual void serialiseU32(uint32_t value) = 0;
    virtual void serialiseU64(uint64_t value) = 0;
    virtual void serialiseI8(int8_t value) = 0;
    virtual void serialiseI16(int16_t value) = 0;
    virtual void serialiseI32(int32_t value) = 0;
    virtual void serialiseI64(int64_t value) = 0;
    virtual void serialiseF32(float value) = 0;
    virtual void serialiseF64(double value) = 0;
    virtual size_t offsetInBytes() const = 0;

    template <typename T>
    inline void serialise(T const& object) {
        luna::serde::serialise(*this, object);
    }
};

class IDeserialiser {
public:
    virtual void deserialiseBytes(uint8_t* dest, size_t length) = 0;
    virtual void skipBytes(size_t count) = 0;
    virtual bool deserialiseBool() = 0;
    virtual uint8_t deserialiseU8() = 0;
    virtual uint16_t deserialiseU16() = 0;
    virtual uint32_t deserialiseU32() = 0;
    virtual uint64_t deserialiseU64() = 0;
    virtual int8_t deserialiseI8() = 0;
    virtual int16_t deserialiseI16() = 0;
    virtual int32_t deserialiseI32() = 0;
    virtual int64_t deserialiseI64() = 0;
    virtual float deserialiseF32() = 0;
    virtual double deserialiseF64() = 0;
    virtual size_t offsetInBytes() const = 0;

    template <typename T>
    inline void deserialise(T& object) {
        luna::serde::deserialise(*this, object);
    }

    void deserialiseNormQuat(float& w, float& x, float& y, float& z);
    void deserialiseCompressedVec(float& x, float& y, float& z);

    inline float deserialiseCompressedF32() {
        return static_cast<float>(deserialiseU16()) / 32767.5F - 1.0f;
    }
};

} // namespace luna::serde

#include "serdeExtensions.hh"
