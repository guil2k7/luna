set(LUNA_SOURCE_FILES
    Helpers.cc
    Hooker.cc
    Memory.cc
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-invalid-offsetof")

add_subdirectory(Game)
add_subdirectory(Extensions)

add_library(LunaEngine STATIC ${LUNA_SOURCE_FILES})
target_link_libraries(LunaEngine PRIVATE imgui)
