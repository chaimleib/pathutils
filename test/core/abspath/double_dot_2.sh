result="`abspath hello/world/..`"
[ "$result" = "$PWD/hello" ] &&
    [ "`echo "$result" | head -c1`" = / ]
