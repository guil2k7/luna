// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#include <luna/core/memory.hh>
#include <cstring>
#include <sys/mman.h>
#include <unistd.h>

using namespace luna;
using namespace luna::core;

inline static size_t alignValue(size_t value, size_t alignment) {
    if (value < alignment)
        return alignment;

    return (value + alignment - 1) / alignment * alignment;
}

inline static int convertProtectionFlagsToPlatform(int flags) {
    int platformFlags = 0;

    if (flags & PROTECTION_READ)
        platformFlags |= PROT_READ;

    if (flags & PROTECTION_WRITE)
        platformFlags |= PROT_WRITE;

    if (flags & PROTECTION_EXEC)
        platformFlags |= PROT_EXEC;

    return platformFlags;
}

void* core::virtualAlloc(size_t size, int flags) {
    return mmap(
        nullptr, size, convertProtectionFlagsToPlatform(flags),
        MAP_PRIVATE | MAP_ANONYMOUS,
        0, 0);
}

void core::virtualRelease(void* pointer, size_t size) {
    munmap(pointer, size);
}

bool core::virtualModifyProtection(void* pointer, size_t size, int flags) {
    int pageSize = getpagesize();

    void* pageStart = reinterpret_cast<void*>(
        reinterpret_cast<uintptr_t>(pointer) & ~(pageSize - 1));

    int platformFlags = convertProtectionFlagsToPlatform(flags);

    return mprotect(pageStart, alignValue(size, pageSize), platformFlags) == 0;
}

void core::memCopy(uint8_t const* source, uint8_t* destination, size_t nbytes) {
    memcpy(destination, source, nbytes);
}
