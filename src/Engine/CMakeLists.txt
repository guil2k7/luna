set(LUNA_SOURCE_FILES
    Helpers.cc
    Main.cc
    Memory.cc
)

add_subdirectory(Game)
add_subdirectory(Extensions)

add_library(LunaEngine STATIC ${LUNA_SOURCE_FILES})
target_link_libraries(LunaEngine PUBLIC imgui)
