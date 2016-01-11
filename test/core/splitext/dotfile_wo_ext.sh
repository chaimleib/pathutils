splitext .helloworld | (
    read head; read tail
    [ "$head" = ".helloworld" ] && [ "$tail" = "" ]
)
