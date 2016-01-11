splitext hello/.world | (
    read head; read tail
    [ "$head" = "hello/.world" ] && [ "$tail" = "" ]
)
