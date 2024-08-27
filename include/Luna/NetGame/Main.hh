// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Net/Client.hh"

namespace Luna::NetGame {

class CCore;
class CClassManager;
class CLocalPlayer;
class CRemotePlayer;

class CNetGameContext {
public:
    virtual ~CNetGameContext() = default;

    Net::CClient* Client;

    CCore* Core;
    CClassManager* ClassManager;
    CLocalPlayer* LocalPlayer;
    CRemotePlayer* RemotePlayer;
};

extern CNetGameContext* Context;

void Initialise();

} // namespace Luna::NetGame
