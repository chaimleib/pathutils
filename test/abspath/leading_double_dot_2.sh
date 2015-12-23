result="$(abspath ../helloworld)"
[[ "$result" == "$(dirname "$PWD")/helloworld" && "$result" == /* ]]
