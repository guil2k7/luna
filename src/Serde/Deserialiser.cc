// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Serde/Serde.hh>
#include <cmath>

using namespace Luna;
using namespace Luna::Serde;

void IDeserialiser::DeserialiseNormQuat(float& w, float& x, float& y, float& z) {
    bool cwNeg = DeserialiseBool();
    bool cxNeg = DeserialiseBool();
    bool cyNeg = DeserialiseBool();
    bool czNeg = DeserialiseBool();

    uint16_t cx = DeserialiseU16();
    uint16_t cy = DeserialiseU16();
    uint16_t cz;

    try {
        cz = DeserialiseU16();
    }
    catch (CSerdeException) {
        cz = 0;
    }

    x = cx / 65535.0f;
    y = cy / 65535.0f;
    z = cz / 65535.0f;

    if (cxNeg) x = -x;
    if (cyNeg) y = -y;
    if (czNeg) z = -z;

    float difference = 1.0f - x * x - y * y - z * z;

    if (difference < 0.0f)
        difference = 0.0f;

    w = sqrt(difference);

    if (cwNeg) w = -w;
}

void IDeserialiser::DeserialiseCompressedVec(float& x, float& y, float& z) {
    float magnitude = DeserialiseF32();

    if (magnitude == 0.0f) {
        x = 0.0f;
        y = 0.0f;
        z = 0.0f;

        return;
    }

    float cx = DeserialiseCompressedF32();
    float cy = DeserialiseCompressedF32();
    float cz = DeserialiseCompressedF32();

    x = cx * magnitude;
    y = cy * magnitude;
    z = cz * magnitude;
}
