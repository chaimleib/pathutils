result="$(abspath hello/world/..)"
[[ "$result" == "$PWD/hello" && "$result" == /* ]]
