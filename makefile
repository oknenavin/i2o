SHELL = /bin/sh

outdir = .out
srcdir = src

prefix ?= /usr/local
insdir = $(DESTDIR)$(prefix)/bin

json2cbor-src = \
    $(srcdir)/json2cbor.cxx

json2json-src = \
    $(srcdir)/json2json.cxx

cbor2json-src = \
    $(srcdir)/cbor2json.cxx

all: $(outdir)/json2cbor $(outdir)/json2json $(outdir)/cbor2json

$(outdir)/json2cbor: $(json2cbor-src)
	@mkdir -p $(outdir)
	$(CXX) -I $(incdir) -DNDEBUG -O3 $(CPPFLAGS) -std=c++11 -Wall $(CXXFLAGS) $(LDFLAGS) $(json2cbor-src) -o $@

$(outdir)/json2json: $(json2json-src)
	@mkdir -p $(outdir)
	$(CXX) -I $(incdir) -DNDEBUG -O3 $(CPPFLAGS) -std=c++11 -Wall $(CXXFLAGS) $(LDFLAGS) $(json2json-src) -o $@

$(outdir)/cbor2json: $(cbor2json-src)
	@mkdir -p $(outdir)
	$(CXX) -I $(incdir) -DNDEBUG -O3 $(CPPFLAGS) -std=c++11 -Wall $(CXXFLAGS) $(LDFLAGS) $(cbor2json-src) -o $@

clean:
	@rm -fr $(outdir)

install: $(outdir)/json2cbor $(outdir)/json2json $(outdir)/cbor2json
	@install -d                                                                      $(insdir)
	@install -p -m 4755 $(outdir)/json2cbor $(outdir)/json2json $(outdir)/cbor2json  $(insdir)

uninstall:
	@rm -f $(insdir)/json2cbor $(insdir)/json2json $(insdir)/cbor2json

.PHONY: all clean install uninstall
