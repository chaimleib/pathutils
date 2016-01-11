#!/usr/bin/env sh
my_dir="$(dirname $0)"
. "$my_dir"/testcommon.sh
. "$my_dir"/../lib/lib.sh

runlibtests() {
    bash "$my_dir"/lssys.sh
    printf '\n'

    runtestsatroot "$my_dir/lib"
    finishtests
}

runlibtests
