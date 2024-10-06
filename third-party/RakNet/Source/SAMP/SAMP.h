#pragma once

#include <cstddef>
#include <cstdint>

namespace RakNet::SAMP {

/// Generates an auth response for the challenge sent by the server.
/// @note `output` MUST have a minimum size of 40 + 1.
void GenerateAuthResponse(char* output, char const* input, size_t inputLength);

/// Obfuscates bytes and adds a checksum.
/// @note the destination can be the source too, but it must have an extra byte to store
/// the checksum.
void Obfuscate(uint8_t* dest, uint8_t const* src, size_t len, uint32_t salt);

/// Deobfuscates bytes and verifies the checksum.
/// @returns true if the checksum is valid, false otherwise.
/// @note the destination can be the source too.
bool Deobfuscate(uint8_t* dest, uint8_t const* src, size_t len, uint32_t salt);

} // namespace RakNet::SAMP
