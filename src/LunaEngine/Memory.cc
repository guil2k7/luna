// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <LunaEngine/Memory.hh>
#include <sys/mman.h>
#include <unistd.h>

using namespace LunaEngine;

static int ConvertProtectionFlagsToOS(int flags) {
    int osFlags = 0;

    if (flags & PROTECTION_READ)
        osFlags |= PROT_READ;

    if (flags & PROTECTION_WRITE)
        osFlags |= PROT_WRITE;

    if (flags & PROTECTION_EXEC)
        osFlags |= PROT_EXEC;

    return osFlags;
}

bool LunaEngine::ModifyMemoryProtection(void* address, size_t size, int flags) {
    int pageSize = getpagesize();

    void* pageStart = reinterpret_cast<void*>(
        reinterpret_cast<uintptr_t>(address) & ~(pageSize - 1));

    int osFlags = ConvertProtectionFlagsToOS(flags);

    return mprotect(pageStart, AlignValue(size, pageSize), osFlags) == 0;
}

void* LunaEngine::AllocMemory(size_t size, int flags) {
    return mmap(
        nullptr, size, ConvertProtectionFlagsToOS(flags),
        MAP_PRIVATE | MAP_ANONYMOUS,
        0, 0
    );
}

void LunaEngine::ReleaseMemory(void* addr, size_t size) {
    munmap(addr, size);
}
