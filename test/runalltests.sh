#!/bin/bash
my_dir="$(dirname $0)"
. "$my_dir"/testcommon.sh
. "$my_dir"/../lib/lib.sh
PATH="$my_dir/../bin:$PATH"

function runlibtests() {
    lssys
    printf '\n'

    echo "# Lib tests... "
    runtestsatroot "$my_dir/lib"

    printf '\n'
    echo "# Core tests..."
    runtestsatroot "$my_dir"

    finishtests
}

runlibtests
