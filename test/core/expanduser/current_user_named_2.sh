result="`expanduser "~${USER}/hello/world"`"
home=~
[ "$result" = "${home}/hello/world" ] &&
	[ "$result" != "~${USER}/hello/world" ]
