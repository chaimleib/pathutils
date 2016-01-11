while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitext hello/.world)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "hello/.world" && "$tail" == "" ]]
