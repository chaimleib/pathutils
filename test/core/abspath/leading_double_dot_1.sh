result="$(abspath ../hello/world)"
[[ "$result" == "$(dirname "$PWD")/hello/world" && "$result" == /* ]]
