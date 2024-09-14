// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstddef>
#include <cstdint>

namespace Luna::Core {

enum eProtection {
    PROTECTION_READ = 1 << 0,
    PROTECTION_WRITE = 1 << 1,
    PROTECTION_EXEC = 1 << 2,
};

void* VirtualAlloc(size_t size, int flags);
void VirtualRelease(void* pointer, size_t size);
bool VirtualModifyProtection(void* pointer, size_t size, int flags);

/// Flushes the contents of the instruction cache.
inline void FlushCache(void* address, size_t size) {
    __builtin___clear_cache(
        reinterpret_cast<char*>(address),
        &reinterpret_cast<char*>(address)[size]
    );
}

void MemCopy(uint8_t const* source, uint8_t* destination, size_t nbytes);

} // namespace Luna::Core
