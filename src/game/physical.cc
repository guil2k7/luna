// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/physical.hh>
#include <luna/core/exceptions.hh>

using namespace luna::core;
using namespace luna::game;

static struct Assertions {
    Assertions() {
        VALIDATE_OFFSET_VIRTUAL(&Physical::processEntityCollision, 0x677D08 - 0x00677CAC);
    }
} g_assertions;
