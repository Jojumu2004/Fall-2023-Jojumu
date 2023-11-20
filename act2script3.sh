#!/bin/bash

#Prompt the user for the value of the name variable
read -p "Enter your name: " name

#Prompt the current date 
read -p "current date: " date

if [ $date=<12 ]
then
	echo "Good morning,$name!"
elif [ $date=12<5 ]
then
	echo "Good afternoon,$name!"
elif [$date=>5 ]
then
	echo "Good Evening,$name!"
fi
