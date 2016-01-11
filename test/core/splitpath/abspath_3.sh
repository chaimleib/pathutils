result="`splitext /hello/world/test`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "/hello/world" ] &&
    [ "$tail" = "test" ]
