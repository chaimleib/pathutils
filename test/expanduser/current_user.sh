result="$(expanduser '~')"
[[ "$result" == ~ ]] &&
	[[ "$result" != "~" ]]