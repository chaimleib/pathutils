result="`splitext C:\\helloworld.txt \\`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "C:\\helloworld" ] &&
    [ "$tail" = ".txt" ]
