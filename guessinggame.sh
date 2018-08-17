#!/bin/bash

function bid {
	echo -n "Guess what the number of files in the current directory:"
	read num
	file_num=$(ls|wc -l)
}

bid

while [[ $num -ne $file_num ]]
do
	if [[ $num -lt $file_num ]]
	then
		echo "Your guess is too low."
	else
		echo "Your guess is too high."
	fi
	bid
done

echo "Your guess is right!"
