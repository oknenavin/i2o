SHELL = /bin/bash

outdir = .out
srcdir = ../src

json2cbor-src = \
    $(srcdir)/json2cbor.cxx

json2json-src = \
    $(srcdir)/json2json.cxx

cbor2json-src = \
    $(srcdir)/cbor2json.cxx

check: all $(in)
	@$(SHELL) round-trip.sh

all: $(outdir)/json2cbor $(outdir)/json2json $(outdir)/cbor2json

$(outdir)/json2cbor: $(json2cbor-src)
	@mkdir -p $(outdir)
	$(CXX) -I . -DNDEBUG -O3 $(CPPFLAGS) -std=c++11 -Wall $(CXXFLAGS) $(LDFLAGS) $(json2cbor-src) -o $@

$(outdir)/json2json: $(json2json-src)
	@mkdir -p $(outdir)
	$(CXX) -I . -DNDEBUG -O3 $(CPPFLAGS) -std=c++11 -Wall $(CXXFLAGS) $(LDFLAGS) $(json2json-src) -o $@

$(outdir)/cbor2json: $(cbor2json-src)
	@mkdir -p $(outdir)
	$(CXX) -I . -DNDEBUG -O3 $(CPPFLAGS) -std=c++11 -Wall $(CXXFLAGS) $(LDFLAGS) $(cbor2json-src) -o $@

clean:
	@rm -fr $(outdir)

.PHONY: all clean check
