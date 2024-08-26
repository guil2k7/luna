// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/NetGame/Main.hh>
#include <Luna/NetGame/Core.hh>
#include <Luna/NetGame/Class.hh>
#include <Luna/NetGame/LocalPlayer.hh>
#include <Luna/NetGame/RemotePlayer.hh>

#include <Luna/Engine/Extensions/ImGui.hh>
#include <Luna/Engine/Game/Game.hh>
#include <Luna/Engine/Game/Hud.hh>

using namespace Luna;
using namespace Luna::NetGame;
using namespace Luna::Net;
using namespace Luna::Engine::Extensions;
using namespace Luna::Engine::Game;

CMultiplayerContext* NetGame::Context = nullptr;

class CMultiplayerExtension final :
    public CMultiplayerContext,
    public IGameExtension,
    public IHudExtension,
    public IImGuiWidget
{
public:
    void Initialise() override {}
    void Release() override {}

    void Install();

    void Render() override;

    void Init3() override;

    void DrawAfterFade(CHud* hud) override;
};

void CMultiplayerExtension::Install() {
    Client = new CClient();

    auto core = new CCore();
    auto classManager = new CClassManager();
    auto localPlayer = new CLocalPlayer();
    auto remotePlayer = new CRemotePlayer();

    core->Install();
    classManager->Install();
    localPlayer->Install();
    remotePlayer->Install();

    CHud::AddExtension(this);
    CGame::AddExtension(this);

    CImGuiExtension::Get()->AddWidget(this);
}

void CMultiplayerExtension::Render() {
    ClassManager->Render();
}

void CMultiplayerExtension::Init3() {
    CConnectionParams connectionParams;
    connectionParams.Nickname = "guil2k7_Luna";
    connectionParams.Host = "192.168.1.11";
    connectionParams.Port = 7777;

    Client->SetConnectionParams(connectionParams);
    Client->Connect();
}

void CMultiplayerExtension::DrawAfterFade(CHud* hud) {
    Client->Update();
}

void NetGame::Initialise() {
    auto context = new CMultiplayerExtension();
    Context = context;

    context->Install();
}
