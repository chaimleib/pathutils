result="`expanduser '~/hello/world'`"
home=~
[ "$result" = "${home}/hello/world" ] &&
	[ "$result" != "~/hello/world" ]
