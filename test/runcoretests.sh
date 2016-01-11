#!/usr/bin/env sh
my_dir="$(dirname $0)"
. "$my_dir"/testcommon.sh
PATH="$my_dir/../bin:$PATH"

runcoretests() {
    "$my_dir"/lssys.sh
    printf '\n'

    runtestsatroot "$my_dir/core"
    finishtests
}

runcoretests
