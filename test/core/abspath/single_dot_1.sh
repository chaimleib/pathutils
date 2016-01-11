result="`abspath ./helloworld`"
[ "$result" = "$PWD/helloworld" ] &&
    [ "`echo "$result" | head -c1`" = / ]
