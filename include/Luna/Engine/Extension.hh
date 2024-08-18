// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

namespace Luna::Engine {

class IExtension {
public:
    virtual void Initialise() = 0;
    virtual void Release() = 0;
};

} // namespace Luna::Engine
