## `I2O` utilities

[![Utilities][img-bin]](https://github.com/oknenavin/i2o)  
[![Language][img-lng]](https://isocpp.org/wiki/faq/cpp11)
[![Format][img-fmt-json]](http://json.org)
[![Format][img-fmt-cbor]](https://cbor.io)  
[![License][img-lic]](LICENSE)


--------------------------------------------------------------------------------

`I2O` is a collection of filters for conversion between the file formats
  implemented by the [`CXON`](https://github.com/oknenavin/cxon) library,
  which currently consist of [`JSON`](http://json.org) and [`CBOR`](https://cbor.io)


--------------------------------------------------------------------------------

#### Contents
  - [Introduction](#introduction)
  - [Formats](#formats)
  - [Compilation](#compilation)
  - [Installation](#installation)
  - [Contributing](#contributing)


--------------------------------------------------------------------------------

#### Introduction

###### Example
```bash
$ json2cbor < in.json > out.cbor                    # conversion from JSON to CBOR
$ cbor2json < in.cbor > out.json                    # conversion from CBOR to JSON
$ cat < in.cbor | cbor2json | json2json > out.json  # conversion from CBOR to JSON, pretty-printed
```

--------------------------------------------------------------------------------

#### Formats

##### [`JSON`](http://json.org)

The implementation strictly complies with [`RFC7159`][RFC7159] / [`ECMA-404`][ECMA-404].

##### [`CBOR`](https://cbor.io)

The implementation strictly complies with [`RFC7049`][RFC7049].


--------------------------------------------------------------------------------

#### Compilation

`CXON` requires [`C++11`][cpp-comp-support] compliant compiler.  
The only dependency, besides the standard library is the [`CXON`](https://github.com/oknenavin/cxon) library.


--------------------------------------------------------------------------------

#### Installation

`I2O` can be build and installed with the provided makefile on `POSIX` systems:

``` bash
$ git clone https://github.com/oknenavin/cxon.git
$ sudo make -C cxon install
$ git clone https://github.com/oknenavin/i2o.git
$ sudo make -C i2o install
```

or because `CXON` is a header-only library, you may skip its installation:

``` bash
$ git clone https://github.com/oknenavin/cxon.git
$ git clone https://github.com/oknenavin/i2o.git
$ sudo make -C i2o CXXFLAGS="../cxon/src" install
```

or just build it in place:

``` bash
$ git clone https://github.com/oknenavin/cxon.git
$ git clone https://github.com/oknenavin/i2o.git
$ make -C i2o CXXFLAGS="../cxon/src" # the binaries are in i2o/.out
```

--------------------------------------------------------------------------------

#### Contributing

Any kind of contribution (feedback, suggestions, code, tests, documentation, etc.) is welcome.  
Contact via [GitHub][GitHub] (create an issue even it's just a question or comment) or
via [mail](mailto:oknenavin@outlook.com).


-------------------------------------------------------------------------------

Distributed under the MIT license. See [`LICENSE`](LICENSE) for more information.  
[GitHub][github]


<!-- links -->
[img-bin]: https://img.shields.io/badge/bin-I2O-608060.svg?style=plastic
[img-lng]: https://img.shields.io/badge/language-C++11/20-608060.svg?style=plastic&logo=C%2B%2B
[img-fmt-json]: https://img.shields.io/badge/language-JSON-608060.svg?style=plastic&logo=JSON
[img-fmt-cbor]: https://img.shields.io/badge/language-CBOR-608060.svg?style=plastic
[img-lic]: https://img.shields.io/badge/license-MIT-608060.svg?style=plastic

[cpp-comp-support]: https://en.cppreference.com/mwiki/index.php?title=cpp/compiler_support&oldid=108771
[RFC7159]: https://www.ietf.org/rfc/rfc7159.txt
[ECMA-404]: http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf
[RFC7049]: https://tools.ietf.org/rfc/rfc7049.txt
[github]: https://github.com/oknenavin/cxon
