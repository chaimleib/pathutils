result="$(expanduser '~')"
[[ "$result" == ~ ]] &&
	[[ "$result" != "~" ]]
