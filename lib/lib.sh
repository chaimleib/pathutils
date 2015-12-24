debug() { echo "$1 => \"$(eval echo \$$1)\"" >&2; }

startswith() {
    local prefix="$1"
    local str="$2"
    [ "`echo "$str" | head -c"${#prefix}"`" = "$prefix" ]
}

joinstr() {
    local sep="`shift`"
    local num_args=$#
    [ $num_args -eq 0 ] && printf '\n' && return 0
    local i=1
    while [ $i -lt $((num_args)) ]; do
        printf %s"$sep" "`shift`"
        $((i=i+1))
    done
    echo "`shift`"
}

repeatstr() {
    local str="$1"
    local num=${2-0}
    while ((num--)); do printf "$str"; done
    printf '\n'
}

splitstr() {
    local str="$1"
    local delim="$2"
    if [ -z "$delim" ]; then
        echo "splitstr: no delimiter provided" >&2
        return 1
    fi
    echo "${str//"$delim"/$'\n'}"
}
