while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitpath hello/world)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "hello" && "$tail" == "world" ]]
