// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Net/Client.hh"

namespace Luna::NetGame {

class CCore;
class CClassManager;
class CLocalPlayer;
class CRemotePlayer;

class CMultiplayerContext {
public:
    virtual ~CMultiplayerContext() = default;

    Net::CClient* Client;

    CCore* Core;
    CClassManager* ClassManager;
    CLocalPlayer* LocalPlayer;
    CRemotePlayer* RemotePlayer;
};

extern CMultiplayerContext* Context;

void Initialise();

} // namespace Luna::NetGame
