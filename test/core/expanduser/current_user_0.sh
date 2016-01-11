result="$(expanduser '~/')"
home=~
[[ "$result" == "${home}/" ]] &&
	[[ "$result" != "~/" ]]
