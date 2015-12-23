result="$(abspath helloworld/..)"
[[ "$result" == "$PWD" && "$result" == /* ]]
