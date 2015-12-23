function debug() { echo "$1 => \"$(eval echo \$$1)\"" >&2; }

function startswith() {
    local prefix="$1"
    local str="$2"
    [[ "$str" == "$prefix"* ]]
}

function joinstr() {
    local sep="$1"
    local args=("$@")
    local num_args=${#@}
    [[ $num_args -eq 1 ]] && printf '\n' && return 0
    local i=1
    while [[ $i -lt $((num_args-1)) ]]; do
        printf %s"$sep" "${args[$i]}"
        ((i++))
    done
    echo "${args[$num_args-1]}"
}

function repeatstr() {
    local str="$1"
    local num=${2-0}
    [[ $num -gt 0 ]] && printf "$str"%.s $(eval echo {1..$num})
    printf '\n'
}

function splitstr() {
    local str="$1"
    local delim="$2"
    if [[ -z "$delim" ]]; then
        echo "splitstr: no delimiter provided" >&2
        return 1
    fi
    echo "${str//"$delim"/$'\n'}"
}
