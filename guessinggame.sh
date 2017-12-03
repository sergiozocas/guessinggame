#!/usr/bin/env bash
#File: guessinggame.sh
#Author: Sergio Diaz

function check () {							#function that checks if the guess equals to the number of files in the directory

	if [[ $guess =~ ^[0-9]+$ ]]				#check if the guess is a number
	then
		num_files=$(ls -l | egrep "^-" | wc -l)	#get the number of files in the working directory
		if [[ $num_files -eq $guess ]] 
		then
			echo "Good guess! Congratulations"
			check_return=true
		elif [[ $num_files -gt $guess ]]
		then
			echo "Guess a higher number"
			check_return=false
		else
			echo "Guess a lower number"
			check_return=false
		fi
	else
		echo "Your input is not a number"
		check_return=false
	fi
}


check_return=false 							

echo "Guess the number of files in this directory: "
read guess
check

while [[ $check_return = false ]]
do
	echo "Try again:"
	read guess
	check
done
