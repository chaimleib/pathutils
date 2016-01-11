while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitext /)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "/" && "$tail" == "" ]]
