include_directories(${LUNA_INCLUDE_DIRS})
link_libraries(spdlog::spdlog)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-invalid-offsetof")

add_subdirectory(Engine)
add_subdirectory(Serde)
add_subdirectory(Net)
add_subdirectory(NetGame)

set(LUNA_SOURCE_FILES
    Main.cc
)

add_library(Luna SHARED ${LUNA_SOURCE_FILES})

target_link_libraries(Luna PRIVATE
    LunaEngine
    LunaSerde
    LunaNetwork
    LunaMultiplayer
)
