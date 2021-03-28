## `I2O` utilities


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
$ json2cbor < in.json > out.cbor               # conversion from JSON to CBOR
$ cbor2json < out.cbor > out.json              # conversion from CBOR to JSON
$ cbor2json < out.cbor | json2json > out.json  # conversion from CBOR to JSON, pretty-printed
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
The only dependency, besides the standard library is [`CXON`](https://github.com/oknenavin/cxon) library.


--------------------------------------------------------------------------------

#### Installation

`I2O` can be build and installed with the provided makefile on a `POSIX` systems:

``` bash
$ git clone https://github.com/oknenavin/cxon.git
$ sudo make -C cxon install
$ git clone https://github.com/oknenavin/i2o.git
$ sudo make -C i2o install
```

or as `CXON` as a header-only library, you may skip its installation:

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

[cpp-comp-support]: https://en.cppreference.com/mwiki/index.php?title=cpp/compiler_support&oldid=108771
[RFC7159]: https://www.ietf.org/rfc/rfc7159.txt
[ECMA-404]: http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf
[RFC7049]: https://tools.ietf.org/rfc/rfc7049.txt
[github]: https://github.com/oknenavin/cxon
