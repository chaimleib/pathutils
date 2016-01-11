if ! [ "`splitstr hello /`" = "hello" ]; then
    debug '(splitstr hello /)'
    set -x
    splitstr hello /
    set +x
    false
fi
