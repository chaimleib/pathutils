result="`splitpath test/hello\ world`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "test" ] &&
    [ "$tail" = "hello world" ]
