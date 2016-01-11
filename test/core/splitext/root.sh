splitext / | (
    read head; read tail
    [ "$head" = "/" ] && [ "$tail" = "" ]
)
