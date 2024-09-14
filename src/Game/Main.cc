// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/Class.hh>
#include <Luna/Game/Core.hh>
#include <Luna/Game/Gui.hh>
#include <Luna/Game/LocalPlayer.hh>
#include <Luna/Game/Luna.hh>
#include <Luna/Game/Main.hh>
#include <Luna/Game/RemotePlayer.hh>

using namespace Luna;
using namespace Luna::Game;
using namespace Luna::Net;

void Game::Initialise() {
    CClient* client = new CClient();
    CLuna::Instance = new CLuna(client);

    auto core = new CCore();
    auto classManager = new CClassManager();
    auto localPlayer = new CLocalPlayerManager();
    auto remotePlayer = new CRemotePlayerManager();

    core->Install();
    classManager->Install();
    localPlayer->Install();
    remotePlayer->Install();

    CGui::Initialise();
    CGui::Instance->AddWidget(CLuna::Instance);
}
