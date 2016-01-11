#!/bin/bash
my_dir="$(dirname $0)"
. "$my_dir"/testcommon.sh
PATH="$my_dir/../bin:$PATH"

function runcoretests() {
    lssys
    printf '\n'

    runtestsatroot "$my_dir"
    finishtests
}

runcoretests
