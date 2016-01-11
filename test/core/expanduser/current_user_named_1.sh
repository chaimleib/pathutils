result="$(expanduser "~${USER}/helloworld")"
home=~
[[ "$result" == "${home}/helloworld" ]] &&
	[[ "$result" != "~${USER}/helloworld" ]]
