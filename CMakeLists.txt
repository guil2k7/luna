set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION 26)
set(CMAKE_ANDROID_ARCH_ABI armeabi-v7a)
# set(CMAKE_ANDROID_NDK /android-ndk)
set(CMAKE_ANDROID_STL_TYPE c++_static)

cmake_minimum_required(VERSION 3.22)
project(Luna VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_C_VISIBILITY_PRESET hidden)
set(CMAKE_CXX_VISIBILITY_PRESET hidden)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

set(LUNA_INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/include)

set(LUNA_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(LUNA_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(LUNA_VERSION_PATCH ${PROJECT_VERSION_PATCH})

if(${CMAKE_SYSTEM_NAME} STREQUAL Android)
    add_definitions(-DLUNA_ANDROID=1)
endif()

add_definitions(
    -DLUNA_VERSION_MAJOR=${LUNA_VERSION_MAJOR}
    -DLUNA_VERSION_MINOR=${LUNA_VERSION_MINOR}
    -DLUNA_VERSION_PATCH=${LUNA_VERSION_PATCH}
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(third-party)
add_subdirectory(src)
