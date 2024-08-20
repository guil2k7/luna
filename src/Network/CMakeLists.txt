set(LUNA_SOURCE_FILES
    Components/LocalPlayer.cc
    Components/RemotePlayer.cc

    Client.cc
)

add_library(LunaNetwork STATIC ${LUNA_SOURCE_FILES})
target_link_libraries(LunaNetwork PUBLIC raknet)
