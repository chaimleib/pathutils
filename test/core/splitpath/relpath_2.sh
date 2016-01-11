result="`splitext hello/world`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "hello" ] &&
    [ "$tail" = "world" ]
