while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitext \\hello/world.txt / \\)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "\\hello/world" && "$tail" == ".txt" ]]
