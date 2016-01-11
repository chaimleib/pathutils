#!/bin/bash
# my_dir="$(dirname $0)"
. "$my_dir"/../lib/lssys.sh

failed=0
skipped=0
total=0

function runsubtests() {
    dir="$1"
    echo "Testing `basename $dir` ..."
    for f in "$dir/"*; do
        [ -d "$f" ] && continue
        runtestcase "$f"
    done
}

function runtestcase() {
    f="$1"
    echo "    $f"
    ((total++))
    if ! [ -x "$f" ]; then
        echo "SKIPPED: $f"
        ((skipped++))
    elif ! . "$f"; then
        echo "FAILED:  $f"
        ((failed++))
    fi
}

function runtestsatroot() {
    root="${1?runtestatroot: no root dir provided}"

    for dir in "$root/"*; do
        [[ -d "$dir" ]] && runsubtests "$dir"
    done
}

function finishtests() {
    if [[ "$failed" == 0 ]]; then
        echo "No failures in $total tests, $skipped skipped. Bravo!"
        echo "SUCCESS"
    else
        echo "$failed out of $total tests failed, $skipped skipped."
        echo "FAILED"
    fi

    return "$failed"
}