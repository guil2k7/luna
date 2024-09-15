// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "luna.hh"

namespace luna::netgame {

class Core {
public:
    void install();

private:
    static void processInitGame(void* userData, net::Client& client, uint8_t const* rawData, size_t bitSize);
};

} // namespace luna::netgame
