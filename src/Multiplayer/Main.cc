// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Multiplayer/Main.hh>
#include <Luna/Multiplayer/Class.hh>
#include <Luna/Multiplayer/LocalPlayer.hh>
#include <Luna/Multiplayer/RemotePlayer.hh>

using namespace Luna;
using namespace Luna::Multiplayer;
using namespace Luna::Network;

CMultiplayerContext* Multiplayer::Context = nullptr;

void Multiplayer::Initialise() {
    Context = new CMultiplayerContext();
    Context->Client = new CClient();

    auto classManager = new CClassManager();
    auto localPlayer = new CLocalPlayer();
    auto remotePlayer = new CRemotePlayer();

    classManager->Install();
    localPlayer->Install();
    remotePlayer->Install();
}
