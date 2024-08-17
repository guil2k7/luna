// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <Luna/Engine/Hooker.hh>
#include <Luna/Engine/Helpers.hh>
#include <Luna/Engine/Memory.hh>
#include <cstring>
#include <sys/mman.h>

using namespace Luna::Engine;

static inline void MakeArmAbsJump(void* code, void const* destination) {
    // LDR PC, [PC, #-4]
    reinterpret_cast<uint32_t*>(code)[0] = 0xE51FF004;
    reinterpret_cast<void const**>(code)[1] = destination;
}

static inline void MakeThumbAbsJump(void* code, void const* destination) {
    // LDR.W PC, [PC, #0]
    reinterpret_cast<uint32_t*>(code)[0] = 0xF000F8DF;
    reinterpret_cast<void const**>(code)[1] = destination;
}

static void* BuildTrampoline(void const* base, bool thumbMode) {
    void* trampoline = AllocMemory(16, PROTECTION_READ | PROTECTION_WRITE | PROTECTION_EXEC);

    memcpy(trampoline, base, 8);

    if (thumbMode) {
        MakeThumbAbsJump(
            reinterpret_cast<uint8_t*>(trampoline) + 8,
            reinterpret_cast<uint8_t const*>(base) + 8 + 1
        );

        return reinterpret_cast<void*>(reinterpret_cast<uint32_t>(trampoline) | 1);
    }

    MakeArmAbsJump(
        reinterpret_cast<uint8_t*>(trampoline) + 8,
        reinterpret_cast<uint8_t const*>(base) + 8
    );

    return trampoline;
}

void* CRawHooker::Hook() {
    bool isOriginalInThumbMode = IsFunctionInThumbMode(OriginalFn);
    bool isInterceptorInThumbMode = IsFunctionInThumbMode(InterceptorFn);

    void* originalCode = reinterpret_cast<uint8_t*>(reinterpret_cast<uint32_t>(OriginalFn) & 0xFFFFFFFE);

    ModifyMemoryProtection(originalCode, 8, PROTECTION_READ | PROTECTION_WRITE | PROTECTION_EXEC);

    void* trampoline = nullptr;

    if (BuildTrampoline)
        trampoline = ::BuildTrampoline(originalCode, isOriginalInThumbMode);

    if (isOriginalInThumbMode)
        MakeThumbAbsJump(originalCode, InterceptorFn);
    else
        MakeArmAbsJump(originalCode, InterceptorFn);

    return trampoline;
}
