#!/usr/bin/env sh

failed=0
skipped=0
total=0

runtestsatroot() {
    # run tests in $1/*/*.sh, i.e. tests nested exactly one level deep
    root="${1?runtestatroot: no root dir provided}"

    for dir in "$root/"*; do
        [ -d "$dir" ] && runsubtests "$dir"
    done
}

runsubtests() {
    # run tests in this folder
    dir="${1?runsubtests: no subtest dir provided}"
    echo "Testing `basename $dir` ..."
    for f in "$dir/"*; do
        [ -d "$f" ] && continue
        runtestcase "$f"
    done
}

runtestcase() {
    # run specified test file
    f="${1?runtestcase: no test file provided}"
    echo "    $f"
    total=$((total+1))
    if ! [ -x "$f" ]; then
        echo "SKIPPED: $f"
        skipped=$((skipped+1))
    elif ! . "$f"; then
        echo "FAILED:  $f"
        failed=$((failed+1))
    fi
}

finishtests() {
    # print report summary and give exit code
    if [ "$failed" -eq 0 ]; then
        echo "No failures in $total tests, $skipped skipped. Bravo!"
        echo "SUCCESS"
    else
        echo "$failed out of $total tests failed, $skipped skipped."
        echo "FAILED"
    fi

    return "$failed"
}
