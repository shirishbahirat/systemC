#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/alexandroni/Dropbox/TCC-JOAO-PEDRO/Vivado/final/examples/display/translator/vivado_hls/translator/solution1/.autopilot/db/a.g.bc ${1+"$@"}
