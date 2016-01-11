result="`splitext hello\\world.txt \\`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "hello\\world" ] &&
    [ "$tail" = ".txt" ]
