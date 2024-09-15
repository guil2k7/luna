// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/main.hh>
#include <luna/netgame/class.hh>
#include <luna/netgame/core.hh>
#include <luna/netgame/gui.hh>
#include <luna/netgame/localPlayer.hh>
#include <luna/netgame/luna.hh>
#include <luna/netgame/remotePlayer.hh>

using namespace luna;
using namespace luna::netgame;
using namespace luna::net;

void netgame::initialise() {
    Client* client = new Client();
    Luna::s_instance = new Luna(client);

    auto core = new Core();
    auto classManager = new ClassManager();
    auto localPlayer = new LocalPlayerManager();
    auto remotePlayer = new RemotePlayerManager();

    core->install();
    classManager->install();
    localPlayer->install();
    remotePlayer->install();

    Gui::initialise();
    Gui::s_instance->addWidget(Luna::s_instance);
}
