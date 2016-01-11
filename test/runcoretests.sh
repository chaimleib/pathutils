#!/bin/bash

my_dir="$(dirname $0)"
. "$my_dir"/../lib/lssys.sh
PATH="$my_dir/../bin:$PATH"

failed=0
skipped=0
total=0

function runcoretests() {
    lssys
    printf '\n'

    for dir in "$my_dir/"*; do
        [[ -d "$dir" ]] && runsubtests "$dir"
    done

    if [[ "$failed" == 0 ]]; then
        echo "No failures in $total tests, $skipped skipped. Bravo!"
        echo "SUCCESS"
    else
        echo "$failed out of $total tests failed, $skipped skipped."
        echo "FAILED"
    fi

    return "$failed"
}

function runsubtests() {
    dir="$1"
    echo "Testing `basename $dir` ..."
    for f in "$dir/"*; do
        [ -d "$f" ] && continue
        if [ -x "$f" ]; then
            runtestcase "$f"
        else
            echo "SKIPPED: $f"
            ((skipped++))
        fi
    done
}

function runtestcase() {
    f="$1"
    echo "    $f"
    ((total++))
    if ! . "$f"; then
        echo "FAILED:  $f"
        ((failed++))
    fi
}

runcoretests
