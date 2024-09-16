// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/entity.hh>
#include <luna/core/exceptions.hh>

using namespace luna::core;
using namespace luna::game;

static struct Assertions {
    Assertions() {
        VALIDATE_OFFSET_VIRTUAL(&Entity::createRwObject, 0x677C58 - 0x677C38);
        VALIDATE_OFFSET_VIRTUAL(&Entity::setModelIndexNoCreate, 0x677C54 - 0x677C38);
        VALIDATE_OFFSET_VIRTUAL(&Entity::flagToDestroyWhenNextProcessed, 0x677C90 - 0x677C38);
    }
} g_assertions;
