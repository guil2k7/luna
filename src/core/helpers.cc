// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#include <luna/core/helpers.hh>
#include <luna/core/exceptions.hh>
#include <cassert>

using namespace luna;
using namespace luna::core;

void core::makeNop(void* address, size_t size) {
    LUNA_ASSERT((size % 2) == 0);

    size /= 2;

    for (size_t i = 0; i < size; ++i)
        reinterpret_cast<uint16_t*>(address)[i] = 0x46C0; // MOV R8, R8
}
