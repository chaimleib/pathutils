result="`expanduser '~no_such_user__/hello/world'`"
[ "$result" = '~no_such_user__/hello/world' ]
