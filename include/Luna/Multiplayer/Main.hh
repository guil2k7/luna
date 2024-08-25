// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../Network/Client.hh"

namespace Luna::Multiplayer {

class CClassManager;
class CLocalPlayer;
class CRemotePlayer;

struct CMultiplayerContext {
    Network::CClient* Client;
    CClassManager* ClassManager;
    CLocalPlayer* LocalPlayer;
    CRemotePlayer* RemotePlayer;
};

extern CMultiplayerContext* Context;

void Initialise();

} // namespace Luna::Multiplayer
