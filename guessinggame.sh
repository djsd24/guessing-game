#!/usr/bin/env bash

echo "[Welcome to Guessing game]"

function validate{
	echo "Please enter the number of files in the current directory:"
	read guessvalue
    originalvalue=$(ls -1 | wc -l)
}

validate

while [[ $guessvalue -ne $originalvalue ]]
do
	if [[ $guessvalue -lt $originalvalue ]] 
	then
		echo "The value is less"
	else
		echo "The value is high."
	fi
	validate
done

echo "You have guessed the correct value, here is the list of files:"
echo "---" && ls -1
