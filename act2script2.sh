#!/bin/bash

#Prompt the user for the value of their full name variable
read -p "Enter your full name: " name

#Prompt the user for the value of the student ID number
read -p "Enter your student ID number: " number

if [ $number=1234 ] 
then
	echo "Welcome $name, welcome to your virtual machine!"
else
	echo "Error invalid student ID:$number. Please try again."
fi
