#!/bin/bash

random=$(shuf -i 1-10 -n 1) #generate a random number between 1 and 10. 
	echo "Welcome to the Number Guessing Game!"
	echo "The lucky number is between 1 and 10." 
	echo "Can you guess it?"
tries=1

while [ true ]; do
     echo -n "Enter a Number between 1-10: " 

read number

if [ $number -gt $random ]; then 
     echo "Too high!"
elif [ $number -lt $random ]; then 
     echo "Too low!"
else
     echo "Correct! You got it in $tries tries" 
break #exit the loop

fi 
tries=$(($tries+1)) 
done
