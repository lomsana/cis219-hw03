#!/bin/bash

clear
guess=0
answer=$((1 + $RANDOM % 100))
i=0

read -p "Guess a number between 1 and 100: " guess
((i++))
until [ $answer -eq $guess ]; do
	if [ $answer -eq $guess ]; then
		((i++))
		if [ i = 1 ]; then
			echo "You got it only first try!!!"
			exit
		fi
	elif [ $answer -gt $guess ]; then
		read -p "$guess is too low. Guess again: " guess
		((i++))
	elif [ $answer -lt $guess ]; then
		read -p "$guess is too high. Guess again: " guess
		((i++))
	fi
done
if [ i != 1 ]; then
	echo
	echo "You got it in $i guesses."
fi
