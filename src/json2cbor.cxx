// Copyright (c) 2017-2022 oknenavin.
// Licensed under the MIT license. See LICENSE file in the library root for full license information.
//
// SPDX-License-Identifier: MIT

#include "utility.hxx"

#include "cxon/json.hxx" // JSON is the default format
#include "cxon/cbor.hxx"
#include "cxon/lib/node.ordered.hxx"

int main(int /*argc*/, char* /*argv*/[]) {
    using CBOR = cxon::CBOR<>;

    if (FIX_IO_MODE(stdin) == -1 || FIX_IO_MODE(stdout) == -1) {
        return std::cerr << "i/o mode cannot be set", -1;
    }

    cxon::cbor::ordered_node node;

        auto const fb = cxon::from_bytes(node, std::istreambuf_iterator<char>(std::cin), std::istreambuf_iterator<char>());
        if (!fb) {
            return std::cerr << fb.ec.category().name() << ": " << fb.ec.message() << std::endl, -1;
        }

        auto const tb = cxon::to_bytes<CBOR>(std::ostreambuf_iterator<char>(std::cout), node);
        if (!tb) {
            return std::cerr << tb.ec.category().name() << ": " << tb.ec.message() << std::endl, -1;
        }
}
