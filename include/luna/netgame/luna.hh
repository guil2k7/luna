// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "gui.hh"
#include "../net/client.hh"

namespace luna::netgame {

class Core;
class ClassManager;
class LocalPlayerManager;
class RemotePlayerManager;
class TextDrawManager;

class Luna final : public GuiWidget {
public:
    static Luna* s_instance;

    net::Client* client;

    Core* core;
    ClassManager* classManager;
    LocalPlayerManager* localPlayer;
    RemotePlayerManager* remotePlayer;

    Luna(net::Client* client);
    ~Luna();

    void initialise();

    void render() override;
    void update();
};

} // namespace luna::netgame
