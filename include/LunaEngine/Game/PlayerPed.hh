// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "Ped.hh"

namespace LunaEngine::Game {

class CPlayerPed : public CPed {
public:
    static void InjectPatchesAndHooks();

    static CPlayerPed* Create(int id, bool groupCreated);
    static void Destroy(CPlayerPed* instance);
    static void SetupPlayerPed(int id);

    void ProcessControl();

    inline int GetID() const {
        return m_ID;
    }

    void _Initialize(int id);

private:
    PADDING(8);

    int m_ID;
};

static_assert(sizeof (CPlayerPed) >= 1964 && sizeof (CPlayerPed) <= 1996);

} // namespace LunaEngine::Game
