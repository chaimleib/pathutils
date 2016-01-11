result="`expanduser '~/helloworld'`"
home=~
[ "$result" = "${home}/helloworld" ] &&
	[ "$result" != "~/helloworld" ]
