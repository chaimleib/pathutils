while IFS= read -r; do
    lines+=("$REPLY")
done < <(splitext /hello.test/world.txt)
head="${lines[0]}"
tail="${lines[1]}"

[[ "$head" == "/hello.test/world" && "$tail" == ".txt" ]]
