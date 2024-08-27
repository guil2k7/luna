set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-invalid-offsetof")

set(LUNA_LINK_LIBRARIES spdlog::spdlog raknet imgui)

add_subdirectory(Core)
add_subdirectory(Game)
add_subdirectory(GameSA)
add_subdirectory(Net)
add_subdirectory(Serde)

set(LUNA_SOURCE_FILES ${LUNA_SOURCE_FILES}
    Main.cc
)

add_library(Luna SHARED ${LUNA_SOURCE_FILES})
target_include_directories(Luna PRIVATE ${LUNA_INCLUDE_DIRS})
target_link_libraries(Luna PRIVATE ${LUNA_LINK_LIBRARIES})
