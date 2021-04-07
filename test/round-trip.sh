#!/bin/bash

in="../../cxon/test/data/json/set.3/blns.json
    ../../cxon/test/data/json/set.4/emoji.json
    ../../cxon/test/data/json/set.5/apache_builds.json
    ../../cxon/test/data/json/set.5/canada.json
    ../../cxon/test/data/json/set.5/citm_catalog.json
    ../../cxon/test/data/json/set.5/github_events.json
    ../../cxon/test/data/json/set.5/instruments.json
    ../../cxon/test/data/json/set.5/random.json"

out=.out

set -e

function round_trip() {
    local f=$(basename -s .json $1)
    $out/json2json < $1 > $out/$f.0.json
    $out/json2cbor < $1 | $out/cbor2json | $out/json2json > $out/$f.1.json
    diff -q $out/$f.0.json $out/$f.1.json
}

mkdir -p $out

for i in $in ; do
    round_trip $i
done
