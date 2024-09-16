// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

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
    static_assert(sizeof(a) == b, "size of `" #a "` != " #b)

#define VALIDATE_OFFSET(a, b, c) \
    static_assert(offsetof(a, b) == c, "offset of `" #a "` != " #c)

#define VALIDATE_OFFSET_VIRTUAL(a, b) \
    LUNA_ASSERT(getVirtualOffset(a) == (b))

#define _PADDING_2(a, b) a##b
#define _PADDING_1(a, b) _PADDING_2(a, b)

#define PADDING(size) \
    uint8_t _PADDING_1(_padding, __LINE__)[size]

namespace luna::core {

template <typename C, typename R, typename... Args>
using MethodAsFunction = R(LUNA_THISCALL*)(C*, Args...);

template <typename C, typename R, typename... Args>
constexpr MethodAsFunction<C, R, Args...> getMethodPointer(R (C::*method)(Args...)) {
    union {
        R(C::*from)(Args...);
        MethodAsFunction<C, R, Args...> into;
    } repr { .from = method };

    return repr.into;
}

template <typename C, typename R, typename... Args>
constexpr size_t getVirtualOffset(R (C::*method)(Args...)) {
    union {
        R(C::*from)(Args...);
        size_t into;
    } repr { .from = method };

    return repr.into;
}

template <typename R, typename... Args>
inline R callFunction(void* address, Args... args) {
    return reinterpret_cast<R(LUNA_STDCALL*)(Args...)>(address)(args...);
}

template <typename R, typename... Args>
inline R callMethod(void* address, void* self, Args... args) {
    return reinterpret_cast<R(LUNA_THISCALL*)(void*, Args...)>(address)(self, args...);
}

template <typename T>
inline bool isFunctionInThumbMode(T val) {
    return reinterpret_cast<uintptr_t>(val) & 1;
}

template <typename T>
inline T takeAndReplace(void* addr, T newValue) {
    T val = *reinterpret_cast<T*>(addr);
    *reinterpret_cast<T*>(addr) = newValue;

    return val;
}

void makeNop(void* address, size_t size);

} // namespace luna::core
