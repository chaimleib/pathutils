while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitext C:\\helloworld.txt \\)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "C:\\helloworld" && "$tail" == ".txt" ]]
