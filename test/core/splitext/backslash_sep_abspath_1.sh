result="`splitext \\helloworld.txt \\`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "\\helloworld" ] &&
    [ "$tail" = ".txt" ]
