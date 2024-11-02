// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/netgame/main.hh>
#include <luna/netgame/gui.hh>
#include <luna/netgame/classManager.hh>
#include <luna/netgame/localPlayer.hh>
#include <luna/netgame/remotePlayer.hh>
#include <luna/netcode/core.hh>

using namespace luna;
using namespace luna::netgame;
using namespace luna::net;
using namespace luna::netcode;

Client* netgame::g_client = nullptr;

static void registerNetworkCode() {
    ClassManager::registerNetworkCode();
    LocalPlayer::registerNetworkCode();
    RemotePlayer::registerNetworkCode();

    g_client->registerHandlerForPacket(new InitGame());
}

void netgame::initialise() {
    Gui::initialise();

    g_client = new Client();
    g_client->setConnectionParams({
        .nickname = "guil2k7",
        .host = "192.168.1.12",
        .port = 7777,
    });

    ClassManager::s_instance = new ClassManager();

    registerNetworkCode();
}
