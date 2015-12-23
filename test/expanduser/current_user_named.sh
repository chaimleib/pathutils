result="$(expanduser "~${USER}")"
[[ "$result" == ~ ]] &&
	[[ "$result" != "~" ]]
