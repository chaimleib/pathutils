result="$(abspath ./hello/world)"
[[ "$result" == "$PWD/hello/world" && "$result" == /* ]]
