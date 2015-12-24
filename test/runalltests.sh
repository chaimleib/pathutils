#!/bin/bash

my_dir="$(dirname $0)"
. "$my_dir"/../lib/lssys.sh
PATH="$my_dir/../bin:$PATH"
failed=0
total=0

function runalltests() {
    lssys
    for dir in "$my_dir/"*; do
        [[ -d "$dir" ]] && runsubtests "$dir"
    done

    if [[ "$failed" == 0 ]]; then
        echo "No failures in $total tests. Bravo!"
        echo "SUCCESS"
    else
        echo "$failed out of $total tests failed."
        echo "FAILED"
    fi

    return "$failed"
}

function runsubtests() {
    dir="$1"
    echo "Testing `basename $dir` ..."
    for f in "$dir/"*; do
        [[ -x "$f" ]] && runtestcase "$f"
    done
}

function runtestcase() {
    f="$1"
    echo "    $f"
    ((total++))
    ! /bin/bash "$f" && echo "FAILED:  $f" && ((failed++))
}

runalltests
