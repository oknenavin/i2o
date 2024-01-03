// Copyright (c) 2017-2024 oknenavin.
// Licensed under the MIT license. See LICENSE file in the library root for full license information.
//
// SPDX-License-Identifier: MIT

#include "utility.hxx"

#include "cxon/json.hxx" // JSON is the default format
#include "cxon/lang/json/tidy.hxx"

int main(int /*argc*/, char* /*argv*/[]) {
    if (FIX_IO_MODE(stdin) == -1 || FIX_IO_MODE(stdout) == -1) {
        return std::cerr << "i/o mode cannot be set", -1;
    }
    cxon::json::tidy(
        std::ostreambuf_iterator<char>(std::cout),
        std::istreambuf_iterator<char>(std::cin), std::istreambuf_iterator<char>(),
        2, ' '
    );
}
