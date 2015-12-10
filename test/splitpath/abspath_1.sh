while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitpath /helloworld)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "/" && "$tail" == "helloworld" ]]
