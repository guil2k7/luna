// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/Luna.hh>
#include <Luna/Game/Core.hh>
#include <Luna/Game/Class.hh>
#include <Luna/Game/LocalPlayer.hh>
#include <Luna/Game/RemotePlayer.hh>
#include <Luna/Game/Gui.hh>

using namespace Luna;
using namespace Luna::Game;
using namespace Luna::Net;

CLuna* CLuna::Instance = nullptr;

CLuna::CLuna(CClient* client) {
    Client = client;
}

CLuna::~CLuna() {

}

void CLuna::Render() {
    ClassManager->Render();
}

void CLuna::Initialise() {
    CConnectionParams connectionParams;
    connectionParams.Nickname = "guil2k7_Luna";
    connectionParams.Host = "192.168.1.11";
    connectionParams.Port = 7777;

    Client->SetConnectionParams(connectionParams);
    Client->Connect();
}

void CLuna::Update() {
    Client->Update();
}
