set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-invalid-offsetof")

set(LUNA_LINK_LIBRARIES spdlog::spdlog raknet imgui)

add_subdirectory(core)
add_subdirectory(game)
add_subdirectory(net)
add_subdirectory(netgame)
add_subdirectory(serde)

set(LUNA_SOURCE_FILES ${LUNA_SOURCE_FILES}
    main.cc
)

add_library(luna SHARED ${LUNA_SOURCE_FILES})
target_include_directories(luna PRIVATE ${LUNA_INCLUDE_DIRS})
target_link_libraries(luna PRIVATE ${LUNA_LINK_LIBRARIES})
