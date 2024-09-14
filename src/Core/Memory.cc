// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <Luna/Core/Memory.hh>
#include <cstring>
#include <sys/mman.h>
#include <unistd.h>

using namespace Luna;
using namespace Luna::Core;

static inline size_t AlignValue(size_t value, size_t alignment) {
    if (value < alignment)
        return alignment;

    return (value + alignment - 1) / alignment * alignment;
}

static inline int ConvertProtectionFlagsToPlatform(int flags) {
    int platformFlags = 0;

    if (flags & PROTECTION_READ)
        platformFlags |= PROT_READ;

    if (flags & PROTECTION_WRITE)
        platformFlags |= PROT_WRITE;

    if (flags & PROTECTION_EXEC)
        platformFlags |= PROT_EXEC;

    return platformFlags;
}

void* Core::VirtualAlloc(size_t size, int flags) {
    return mmap(
        nullptr, size, ConvertProtectionFlagsToPlatform(flags),
        MAP_PRIVATE | MAP_ANONYMOUS,
        0, 0
    );
}

void Core::VirtualRelease(void* pointer, size_t size) {
    munmap(pointer, size);
}

bool Core::VirtualModifyProtection(void* pointer, size_t size, int flags) {
    int pageSize = getpagesize();

    void* pageStart = reinterpret_cast<void*>(
        reinterpret_cast<uintptr_t>(pointer) & ~(pageSize - 1));

    int platformFlags = ConvertProtectionFlagsToPlatform(flags);

    return mprotect(pageStart, AlignValue(size, pageSize), platformFlags) == 0;
}

void Core::MemCopy(uint8_t const* source, uint8_t* destination, size_t nbytes) {
    memcpy(destination, source, nbytes);    
}
