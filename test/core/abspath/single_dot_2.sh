result="`abspath ./hello/world`"
[ "$result" = "$PWD/hello/world" ] &&
    [ "`echo "$result" | head -c1`" = / ]
