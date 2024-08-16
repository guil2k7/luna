set(LUNA_SOURCE_FILES
    Helpers.cc
    Hooker.cc
    Memory.cc
)

add_subdirectory(Game)

add_library(LunaEngine STATIC ${LUNA_SOURCE_FILES})
