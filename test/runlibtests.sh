#!/bin/bash
my_dir="$(dirname $0)"
. "$my_dir"/testcommon.sh
. "$my_dir"/../lib/lib.sh

function runlibtests() {
    lssys
    printf '\n'

    runtestsatroot "$my_dir/lib"
    finishtests
}

runlibtests
