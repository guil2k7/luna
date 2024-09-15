// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/netgame/luna.hh>
#include <luna/netgame/class.hh>
#include <luna/netgame/core.hh>
#include <luna/netgame/gui.hh>
#include <luna/netgame/localPlayer.hh>
#include <luna/netgame/remotePlayer.hh>

using namespace luna;
using namespace luna::netgame;
using namespace luna::net;

Luna* Luna::s_instance = nullptr;

Luna::Luna(Client* client_) {
    client = client_;
}

Luna::~Luna() {
}

void Luna::render() {
    classManager->render();
}

void Luna::initialise() {
    ConnectionParams connectionParams;
    connectionParams.nickname = "guil2k7_Luna";
    connectionParams.host = "192.168.1.11";
    connectionParams.port = 7777;

    client->setConnectionParams(connectionParams);
    client->connect();
}

void Luna::update() {
    client->update();
    localPlayer->process();
}
