#!/usr/bin/bash
#

print_data () {
	echo MIN: $min
	echo MAX: $max
	printf '\n'
}

declare num=$(shuf -i 1-100 -n 1)
declare min=1
declare max=100

while true; do

	declare guess=$(( x=$min+$max, x/2  ))

	if [[ $guess -gt $num ]]; then
		echo GUESS: $guess
		max=$(( guess-1 ))
		print_data
	elif [[ $guess -lt $num ]]; then
		echo GUESS: $guess
		min=$(( guess+1 ))
		print_data
	else
		echo "Found it! $guess"
		break
	fi

done
