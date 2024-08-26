set(LUNA_SOURCE_FILES
    Core.cc
    Class.cc
    LocalPlayer.cc
    Main.cc
    RemotePlayer.cc
)

add_library(LunaMultiplayer STATIC ${LUNA_SOURCE_FILES})
target_link_libraries(LunaMultiplayer PUBLIC LunaNetwork LunaEngine)
