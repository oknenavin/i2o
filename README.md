## `I2O` utilities

[![Utilities][img-bin]](https://github.com/oknenavin/i2o)
[![Version][img-ver]](https://github.com/oknenavin/cxon/releases)  
[![Language][img-lng]](https://isocpp.org/wiki/faq/cpp11)
[![Format][img-fmt-json]](http://json.org)
[![Format][img-fmt-cbor]](https://cbor.io)  
[![License][img-lic]](LICENSE)

[![Build][img-bld-lnx]](https://github.com/oknenavin/i2o/actions/workflows/linux.yml)
[![Build][img-bld-mac]](https://github.com/oknenavin/i2o/actions/workflows/macos.yml)
[![Build][img-bld-win]](https://github.com/oknenavin/i2o/actions/workflows/windows.yml)  
[![Codecov][img-cov]](https://codecov.io/gh/oknenavin/cxon)
[![Coverity][img-cvr]](https://scan.coverity.com/projects/oknenavin-cxon)
<!--
[![Codacy][img-cod]](https://www.codacy.com/gh/oknenavin/cxon/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=oknenavin/cxon&amp;utm_campaign=Badge_Grade)
[![CodeQL][img-cql]](https://github.com/oknenavin/cxon/actions?query=workflow%3ACodeQL)
[![LGTM][img-lgtm-qual]](https://lgtm.com/projects/g/oknenavin/cxon/context:cpp)
[![LGTM/Alerts][img-lgtm-alrt]](https://lgtm.com/projects/g/oknenavin/cxon/alerts/)
-->


--------------------------------------------------------------------------------

`I2O` is a collection of filters for conversion between the file formats
  implemented by [`CXON`](https://github.com/oknenavin/cxon) library,
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
$ json2cbor < in.json > out.cbor                  # JSON to CBOR
$ cbor2json < in.cbor > out.json                  # CBOR to JSON
$ cat in.cbor | cbor2json | json2json > out.json  # CBOR to pretty JSON
```

--------------------------------------------------------------------------------

#### Formats

##### [`JSON`](http://json.org)

The implementation strictly complies with [`RFC8259`][RFC8259] / [`ECMA-404`][ECMA-404].  

##### [`CBOR`](https://cbor.io)

The implementation complies with [`RFC7049`][RFC7049].


--------------------------------------------------------------------------------

#### Compilation

`I2O` requires [`C++11`][cpp-comp-support] compliant compiler.
[`C++17`][cpp-comp-support] compliant compiler with [`<charconv>`][std-charconv]
([`P0067R5`](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2016/p0067r5.html)) support
is recommended for best performance.  
The only dependency, besides the standard library is the [`CXON`](https://github.com/oknenavin/cxon) library.


--------------------------------------------------------------------------------

#### Installation

`I2O` can be built and installed using the included makefile on `POSIX` systems:

``` bash
$ git clone https://github.com/oknenavin/cxon.git
$ sudo make -C cxon install
$ git clone https://github.com/oknenavin/i2o.git
$ sudo make -C i2o install
```
The default installation directory is `/usr/local/bin` and can be altered with
[`DESTDIR`](http://www.gnu.org/prep/standards/html_node/DESTDIR.html#DESTDIR) and
[`prefix`](http://www.gnu.org/prep/standards/html_node/Directory-Variables.html)
variables, for example:

``` bash
$ git clone https://github.com/oknenavin/cxon.git
$ sudo make -C cxon DESTDIR=~ prefix=/. install
$ git clone https://github.com/oknenavin/i2o.git
$ sudo make -C i2o DESTDIR=~ prefix=/. install
```

will install `CXON` and `I2O` in `~/include` and `~/bin` respectively.

Because `CXON` is a header-only library, you may skip its installation:

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
[img-ver]: https://img.shields.io/github/release/oknenavin/i2o.svg?style=plastic&color=608060
[img-lng]: https://img.shields.io/badge/language-C++11/14/17/20-608060.svg?style=plastic&logo=C%2B%2B
[img-fmt-json]: https://img.shields.io/badge/language-JSON-608060.svg?style=plastic&logo=JSON
[img-fmt-cbor]: https://img.shields.io/badge/language-CBOR-608060.svg?style=plastic
[img-lic]: https://img.shields.io/badge/license-MIT-608060.svg?style=plastic
[img-bld-lnx]: https://github.com/oknenavin/i2o/actions/workflows/linux.yml/badge.svg
[img-bld-mac]: https://github.com/oknenavin/i2o/actions/workflows/macos.yml/badge.svg
[img-bld-win]: https://github.com/oknenavin/i2o/actions/workflows/windows.yml/badge.svg
[img-cov]: https://codecov.io/gh/oknenavin/cxon/branch/master/graph/badge.svg
[img-cvr]: https://scan.coverity.com/projects/18083/badge.svg
[img-cod]: https://app.codacy.com/project/badge/Grade/a4b8981f7ce34dd5963f10723f8188bf
[img-cql]: https://github.com/oknenavin/cxon/workflows/CodeQL/badge.svg
[img-lgtm-qual]: https://img.shields.io/lgtm/grade/cpp/g/oknenavin/cxon.svg?logo=lgtm&logoWidth=18
[img-lgtm-alrt]: https://img.shields.io/lgtm/alerts/g/oknenavin/cxon.svg?logo=lgtm&logoWidth=18
[cpp-comp-support]: https://en.cppreference.com/mwiki/index.php?title=cpp/compiler_support&oldid=108771
[std-charconv]: https://en.cppreference.com/mwiki/index.php?title=cpp/header/charconv&oldid=105120
[RFC7049]: https://tools.ietf.org/rfc/rfc7049.txt
[ECMA-404]: http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-404.pdf
[RFC8259]: https://www.ietf.org/rfc/rfc8259.txt
<!--[RFC7049]: https://tools.ietf.org/rfc/rfc7049.txt-->
[github]: https://github.com/oknenavin/cxon
