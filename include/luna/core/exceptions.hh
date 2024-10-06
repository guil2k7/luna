// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include <stdexcept>
#include <string>

namespace luna::core {

class NotImplemented final : public std::logic_error {
public:
    NotImplemented() : std::logic_error("not implemented") {}
};

inline void assertion_failed(char const* expr, char const* filename, int line) {
    std::string error;
    error += "assertion failed `";
    error += expr;
    error += "` (";
    error += filename;
    error += ":";
    error += line;
    
    throw std::logic_error(std::move(error));
}

#ifdef NDEBUG
#define LUNA_ASSERT(expr) (void)0
#else
#define LUNA_ASSERT(expr) \
    ((expr) ? (void)0 : luna::core::assertion_failed(#expr, __FILE__, __LINE__))
#endif

} // namespace luna::core
