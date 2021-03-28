// Copyright (c) 2017-2021 oknenavin.
// Licensed under the MIT license. See LICENSE file in the library root for full license information.
//
// SPDX-License-Identifier: MIT

#ifndef I2O_UTILITY_HXX_
#define I2O_UTILITY_HXX_

#include <iterator>
#include <iostream>

#if defined(_MSC_VER) || defined(__MINGW32__)
#   include <io.h>
#   include <fcntl.h>
#   define FIX_IO_MODE(s) _setmode(_fileno(s), _O_BINARY)
#else
#   define FIX_IO_MODE(s) 0 // O_BINARY
#endif

#endif
