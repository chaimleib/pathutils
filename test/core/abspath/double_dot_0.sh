result="`abspath ../`"
[ "$result" = "`dirname "$PWD"`" ] &&
    [ "`echo "$result" | head -c1`" = / ]
