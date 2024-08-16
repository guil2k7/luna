// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include <cstdint>

#ifdef LUNA_ANDROID
    #define LUNA_STDCALL
    #define LUNA_THISCALL
#else
    #define LUNA_STDCALL __stdcall
    #define LUNA_THISCALL __thiscall
#endif

#define VALIDATE_SIZE(a, b) \
static_assert(sizeof (a) == b, "size of `"#a"` != " #b);

#define VALIDATE_OFFSET(a, b, c) \
static_assert(offsetof (a, b) == c, "offset of `"#a"` != " #c);

#define _PADDING_2(a, b) a##b
#define _PADDING_1(a, b) _PADDING_2(a, b)

#define PADDING(size) \
uint8_t _PADDING_1(_padding, __LINE__)[size]

namespace LunaEngine {

template<typename R, typename... Args>
inline R CallFunction(void* address, Args... args) {
    return reinterpret_cast<R (LUNA_STDCALL *)(Args...)>(address)(args...);
}

template<typename R, typename... Args>
inline R CallMethod(void* address, void* self, Args... args) {
    return reinterpret_cast<R (LUNA_THISCALL *)(void*, Args...)>(address)(self, args...);
}

/// Flushes the contents of the instruction cache.
inline void FlushCache(void* address, size_t size) {
    __builtin___clear_cache(
        reinterpret_cast<char*>(address),
        &reinterpret_cast<char*>(address)[size]
    );
}

template<typename T>
inline bool IsFunctionInThumbMode(T val) {
    return reinterpret_cast<uintptr_t>(val) & 1;
}

void MakeNop(void* address, size_t size);

} // namespace LunaEngine
