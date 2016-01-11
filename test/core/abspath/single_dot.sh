result="`abspath .`"
[ "$result" = "$PWD" ] &&
    [ "`echo "$result" | head -c1`" = / ]
