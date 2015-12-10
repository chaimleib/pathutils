while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitpath hello\ world/test)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "hello world" && "$tail" == "test" ]]
