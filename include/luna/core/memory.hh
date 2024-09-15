// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <cstddef>
#include <cstdint>

namespace luna::core {

enum ProtectionFlag {
    PROTECTION_READ = 1 << 0,
    PROTECTION_WRITE = 1 << 1,
    PROTECTION_EXEC = 1 << 2,
};

void* virtualAlloc(size_t size, int flags);
void virtualRelease(void* pointer, size_t size);
bool virtualModifyProtection(void* pointer, size_t size, int flags);

/// Flushes the contents of the instruction cache.
inline void flushCache(void* address, size_t size) {
    __builtin___clear_cache(
        reinterpret_cast<char*>(address),
        &reinterpret_cast<char*>(address)[size]);
}

void memCopy(uint8_t const* source, uint8_t* destination, size_t nbytes);

} // namespace luna::core
