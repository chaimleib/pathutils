result="`abspath helloworld/..`"
[ "$result" = "$PWD" ] &&
    [ "`echo "$result" | head -c1`" = / ]
