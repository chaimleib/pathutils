while IFS= read -r; do
    lines+=("$REPLY")
done < <(bin/splitpath hello\ world/test)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "hello world" && "$tail" == "test" ]]
