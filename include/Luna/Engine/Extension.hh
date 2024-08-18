// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

namespace Luna::Engine {

class IExtension {
public:
    virtual void Initialise() = 0;
    virtual void Release() = 0;
};

} // namespace Luna::Engine
