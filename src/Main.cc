// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Engine/Extensions/ImGui.hh>
#include <Luna/Engine/Game/Main.hh>
#include <Luna/Engine/Game/PlayerPed.hh>
#include <Luna/Engine/Game/World.hh>

#include <spdlog/spdlog.h>
#include <spdlog/sinks/android_sink.h>

#include <jni.h>

using namespace Luna;
using namespace Luna::Engine::Game;
using namespace Luna::Engine::Extensions;

class CDebugMenu final : public IImGuiWidget {
public:
    CDebugMenu() {
        strcpy(host, "192.168.1.14");
    }

    void Render() {
        ImGui::Begin("Debug Menu");

        ImGui::InputText("IP or Host", host, sizeof host);

        if (ImGui::Button("Connect")) {
            // CConnectionParams connectionParams;

            // connectionParams.Nickname = "LunaMultiplayer";
            // connectionParams.Host = std::string_view(host);
            // connectionParams.Port = 7777;

            // client->SetConnectionParams(connectionParams);
            // client->Connect();
        }

        if (!gameMenu) {
            if (ImGui::Button("In Game?"))
                gameMenu = true;
        }
        else {
            RenderGameMenu();
        }

        ImGui::End();
    }

    void RenderGameMenu() {
        CPlayerPed* mainPlayer = CWorld::GetPlayerPed();

        ImGui::Text("Health: %.3f", mainPlayer->GetHealth());

        if (ImGui::Button("Kill"))
            mainPlayer->SetHealth(0.0f);
    }

private:
    int id = 0;
    bool gameMenu = false;
    char host[128];
};

extern "C" jint JNI_OnLoad(JavaVM* vm, void* reserved) {
    auto logger = spdlog::android_logger_mt("Luna", "Luna");
    logger->set_level(spdlog::level::debug);

    spdlog::set_default_logger(logger);

    spdlog::info("Luna is loaded!");
    spdlog::info("  Version: {}.{}.{}", LUNA_VERSION_MAJOR, LUNA_VERSION_MINOR, LUNA_VERSION_PATCH);

    InitialiseMods();
    InstallMods();

    auto imGuiExtension = CImGuiExtension::Get();
    imGuiExtension->Install();
    imGuiExtension->AddWidget(new CDebugMenu());

    InitialiseExtensions();

    return JNI_VERSION_1_4;
}
