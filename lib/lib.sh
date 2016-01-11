debug() { echo "$1 => \"$(eval echo \$$1)\"" >&2; }

startswith() {
    local prefix="$1"
    local str="$2"
    [ "`echo "$str" | head -c"${#prefix}"`" = "$prefix" ]
}

joinstr() {
    local sep="$1"; shift
    local num_args=$#
    [ $num_args -eq 0 ] && printf '\n' && return 0
    local i=1
    while [ $i -lt $((num_args)) ]; do
        printf %s"$sep" "`shift`"
        i=$((i+1))
    done
    echo "`shift`"
}

repeatstr() {
    local str="$1"
    local num=${2-0}
    rv=''
    while [ $num -gt 0 ]; do
        rv="$rv$str"
        num=$((num-1))
    done
    printf "$rv\n"
}

splitstr() {
    rest="$1"
    delim="${2:?splitstr: no delimiter provided}"
    while [ -n "$rest" ]; do
        cur="${rest%%$delim*}"
        printf "$cur\n"
        rest="${rest#$cur}"
        rest="${rest#$delim}"
    done
}
