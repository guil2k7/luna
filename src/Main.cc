// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Extensions/ImGui.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/World.hh>

#include <Luna/Network/Client.hh>
#include <Luna/Network/Components/LocalPlayer.hh>
#include <Luna/Network/Components/RemotePlayer.hh>

#include <imgui_stdlib.h>

#include <spdlog/spdlog.h>
#include <spdlog/sinks/android_sink.h>

#include <jni.h>

using namespace Luna;
using namespace Luna::Engine::Game;
using namespace Luna::Engine::Extensions;
using namespace Luna::Network;

static CClient* Client = nullptr;

static char const* CLIENT_STATES[] = {
    "UNDEFINED",
    "DISCONNECTED",
    "CONNECTED",
    "CONNECTING",
    "RETRYING",
};

class CClientUpdater final : public IHudExtension {
public:
    void Initialise() {

    }

    void Release() {

    }

    void DrawAfterFade(CHud* hud) {
        Client->Update();
    }
};

class CDebugMenu final : public IImGuiWidget {
public:
    CDebugMenu() {
        m_ConnectionParams.Nickname = "guil2k7_from_luna";
        m_ConnectionParams.Host = "192.168.1.11";
        m_ConnectionParams.Port = 7777;
    }

    void Render() {
        ImGui::Begin("Luna");

        ImGui::Text("Connection State: %s", CLIENT_STATES[Client->GetState()]);

        if (Client->GetState() == CLIENT_STATE_DISCONNECTED) {
            ImGui::InputText("Nickname", &m_ConnectionParams.Nickname);
            ImGui::InputText("Host", &m_ConnectionParams.Host);
            ImGui::InputInt("Port", &m_ConnectionParams.Port);

            if (ImGui::Button("Connect")) {
                Client->SetConnectionParams(m_ConnectionParams);
                Client->Connect();
            }
        }

        ImGui::End();
    }

private:
    CConnectionParams m_ConnectionParams;
};

extern "C" jint JNI_OnLoad(JavaVM* vm, void* reserved) {
    auto logger = spdlog::android_logger_mt("Luna", "Luna");
    logger->set_level(spdlog::level::debug);

    spdlog::set_default_logger(logger);

    spdlog::info("Luna is injected!");
    spdlog::info("  Version: {}.{}.{}", LUNA_VERSION_MAJOR, LUNA_VERSION_MINOR, LUNA_VERSION_PATCH);

    InitialiseMods();
    InstallMods();

    Client = new CClient();
    (new CLocalPlayerComponent)->Install(*Client);
    (new CRemotePlayerComponent)->Install(*Client);

    auto imGuiExtension = CImGuiExtension::Get();
    imGuiExtension->Install();
    imGuiExtension->AddWidget(new CDebugMenu());

    CHud::AddExtension(new CClientUpdater());

    InitialiseExtensions();

    return JNI_VERSION_1_4;
}
