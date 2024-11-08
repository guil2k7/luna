/// \file
/// \brief Factory class for RakServerInterface, RakClientInterface, and RakPeerInterface
///
/// This file is part of RakNet Copyright 2003 Kevin Jenkins.
///
/// Usage of RakNet is subject to the appropriate license agreement.
/// Creative Commons Licensees are subject to the
/// license found at
/// http://creativecommons.org/licenses/by-nc/2.5/
/// Single application licensees are subject to the license found at
/// http://www.rakkarsoft.com/SingleApplicationLicense.html
/// Custom license users are subject to the terms therein.
/// GPL license users are subject to the GNU General Public
/// License as published by the Free
/// Software Foundation; either version 2 of the License, or (at your
/// option) any later version.

#pragma once

#include "Export.h"

namespace RakNet
{

class RakPeerInterface;

class RAK_DLL_EXPORT RakNetworkFactory
{
public:
	// For DLL's, these are user classes that you might want to new and delete.
	// You can't instantiate exported classes directly in your program.  The instantiation
	// has to take place inside the DLL.  So these functions will do the news and deletes for you.
	// if you're using the source or static library you don't need these functions, but can use them if you want.
	static RakPeerInterface* GetRakPeerInterface( void );

	// To delete the object returned by the Get functions above.
	static void DestroyRakPeerInterface( RakPeerInterface* i );
};

} // namespace RakNet
