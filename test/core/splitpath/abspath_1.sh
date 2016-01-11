result="`splitpath /helloworld`"
head="`echo "$result" | head -n1`"
tail="`echo "$result" | tail -n1`"

[ "$head" = "/" ] &&
    [ "$tail" = "helloworld" ]
