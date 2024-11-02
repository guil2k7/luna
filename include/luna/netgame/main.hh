// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).
// Distributed under the BSD 3-Clause License.
// See LICENSE.txt in the root directory of this project
// or at https://opensource.org/license/bsd-3-clause.

#pragma once

#include "../net/client.hh"

namespace luna::netgame {

extern net::Client* g_client;

void initialise();

} // namespace luna::netgame
