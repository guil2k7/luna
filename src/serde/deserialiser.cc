// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/serde/serde.hh>
#include <cmath>

using namespace luna;
using namespace luna::serde;

void IDeserialiser::deserialiseNormQuat(float& w, float& x, float& y, float& z) {
    bool cwNeg = deserialiseBool();
    bool cxNeg = deserialiseBool();
    bool cyNeg = deserialiseBool();
    bool czNeg = deserialiseBool();

    uint16_t cx = deserialiseU16();
    uint16_t cy = deserialiseU16();
    uint16_t cz;

    try {
        cz = deserialiseU16();
    } catch (SerdeException) {
        cz = 0;
    }

    x = cx / 65535.0f;
    y = cy / 65535.0f;
    z = cz / 65535.0f;

    if (cxNeg)
        x = -x;
    if (cyNeg)
        y = -y;
    if (czNeg)
        z = -z;

    float difference = 1.0f - x * x - y * y - z * z;

    if (difference < 0.0f)
        difference = 0.0f;

    w = sqrt(difference);

    if (cwNeg)
        w = -w;
}

void IDeserialiser::deserialiseCompressedVec(float& x, float& y, float& z) {
    float magnitude = deserialiseF32();

    if (magnitude == 0.0f) {
        x = 0.0f;
        y = 0.0f;
        z = 0.0f;

        return;
    }

    float cx = deserialiseCompressedF32();
    float cy = deserialiseCompressedF32();
    float cz = deserialiseCompressedF32();

    x = cx * magnitude;
    y = cy * magnitude;
    z = cz * magnitude;
}
