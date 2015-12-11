while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitext \\helloworld.txt \\)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "\\helloworld" && "$tail" == ".txt" ]]
