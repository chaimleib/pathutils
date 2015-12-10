while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitpath helloworld)
head="${lines[0]}"
tail="${lines[1]}"

[[ -z "$head" && "$tail" == "helloworld" ]]
