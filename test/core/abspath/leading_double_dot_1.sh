result="`abspath ../hello/world`"
[ "$result" = "`dirname "$PWD"`/hello/world" ] &&
    [ "`echo "$result" | head -c1`" = / ]
