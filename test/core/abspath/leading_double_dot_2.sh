result="`abspath ../helloworld`"
[ "$result" = "`dirname "$PWD"`/helloworld" ] &&
    [ "`echo "$result" | head -c1`" = / ]
