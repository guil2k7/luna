// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "Gui.hh"
#include "../Net/Client.hh"

namespace Luna::Game {

class CCore;
class CClassManager;
class CLocalPlayerManager;
class CRemotePlayerManager;
class CTextDrawManager;

class CLuna final : public IGuiWidget {
public:
    static CLuna* Instance;

    Net::CClient* Client;

    CCore* Core;
    CClassManager* ClassManager;
    CLocalPlayerManager* LocalPlayer;
    CRemotePlayerManager* RemotePlayer;
    CTextDrawManager* TextDraw;

    CLuna(Net::CClient* Client);
    ~CLuna();

    void Initialise();

    void Render() override;
    void Update();
};

} // namespace Luna::Game
