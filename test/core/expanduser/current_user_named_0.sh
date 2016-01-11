result="$(expanduser "~${USER}/")"
home=~
[[ "$result" == "${home}/" ]] &&
	[[ "$result" != "~${USER}/" ]]
