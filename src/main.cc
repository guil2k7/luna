// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/game/main.hh>
#include <luna/netgame/main.hh>
#include <jni.h>
#include <spdlog/sinks/android_sink.h>
#include <spdlog/spdlog.h>

static void initialiseLogger() {
    auto logger = spdlog::android_logger_mt("Luna", "Luna");
    logger->set_level(spdlog::level::debug);

    spdlog::set_default_logger(logger);
}

JNIEXPORT jint JNI_OnLoad(JavaVM* vm, void* reserved) {
    using namespace luna;

    initialiseLogger();

    spdlog::info("Luna was injected! 🔥");
    spdlog::info("  Version: {}.{}.{}", LUNA_VERSION_MAJOR, LUNA_VERSION_MINOR, LUNA_VERSION_PATCH);

    game::initialiseMods();
    game::installMods();
    netgame::initialise();

    return JNI_VERSION_1_4;
}
