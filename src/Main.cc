// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Game/Main.hh>
#include <Luna/GameSA/Main.hh>
#include <spdlog/spdlog.h>
#include <spdlog/sinks/android_sink.h>
#include <jni.h>

static void InitialiseLogger() {
    auto logger = spdlog::android_logger_mt("Luna", "Luna");
    logger->set_level(spdlog::level::debug);

    spdlog::set_default_logger(logger);
}

JNIEXPORT jint JNI_OnLoad(JavaVM* vm, void* reserved) {
    using namespace Luna;

    InitialiseLogger();

    spdlog::info("Luna was injected! 🔥");
    spdlog::info("  Version: {}.{}.{}", LUNA_VERSION_MAJOR, LUNA_VERSION_MINOR, LUNA_VERSION_PATCH);

    GameSA::InitialiseMods();
    GameSA::InstallMods();
    Game::Initialise();

    return JNI_VERSION_1_4;
}
