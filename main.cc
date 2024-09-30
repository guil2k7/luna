#include <cstdint>

namespace foo {
    extern "C" uint8_t* g_gameAddress;
    uint8_t* g_gameAddress;
};

class Foo {
public:
    virtual void* _getBoundRect(void* x) = 0;
};

class Bar : public Foo {
public:
    virtual __attribute__((naked)) void* _getBoundRect(void* x) {
        asm volatile (
            "\tPUSH %{LR%}\n"
            "\tLDR R2, =0f\n"
            "\tLDR R3, g_gameAddress\n"
            "\tADD R2, R3\n"
            "\tBLX R2\n"
            "\tPOP %{PC%}\n"
            "0:\n"
            "\t.word 0x40CDE9\n"
            : :
        );
    }
};

extern "C" __attribute__((visibility("default"))) Bar* CreateBar() {
    return new Bar();
}
