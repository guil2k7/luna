// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/main.hh>
#include <luna/netgame/gui.hh>
#include <luna/netgame/spawnScreen.hh>

using namespace luna;
using namespace luna::netgame;
using namespace luna::net;

Client* netgame::g_client = nullptr;

void netgame::initialise() {
    Gui::initialise();

    g_client = new Client();
    SpawnScreen::s_instance = new SpawnScreen();
}
