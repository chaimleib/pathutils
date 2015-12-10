while IFS= read -r; do
    lines+=("$REPLY")
done < <(bin/splitpath test/hello\ world)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "test" && "$tail" == "hello world" ]]
