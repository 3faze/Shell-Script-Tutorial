#! /bin/bash

#Echo command - display text
echo Hello World!

#Variables
#Uppercase
#Letters, Numbers(Int's or floating points) and underscores
NAME="Shrek"

#This is a litlle of an assembly of what we've got so far
#Quotes are optional since echo doesn't need the output to be a string
echo "My name is $NAME"

#To take user input:
read -p "Enter your name: " NAMEI
echo "$NAMEI is a nice name!"

#If, else and elif statements/conditions
if [ "$NAMEI" = "Tomas" ]; then
	echo "My name is Tomas too!"
elif [ "$NAMEI" = "Joao" ]; then
	echo "My uncle's name is Joao too!"
else
	echo "My name isn't the same as yours."
fi

#Comparison operators
#-eq = equal
#-ne = not equal
#-gt = greater than
#-ge = greater or equal
#-lt = less than
#-le = less or equal

read -p "Tell me a first value: " NUM1
read -p "Tell me a second value: " NUM2

if [ "$NUM1" = "$NUM2" ]; then
	echo "The first number is equal to the second."
elif [ "$NUM1" -gt "$NUM2" ]; then
	echo "The first number is greater than the second."
elif [ "$NUM1" -lt "$NUM2" ]; then
	echo "The first number is less than the second."
else
	echo "The numbers don't have an operator specified for them."
fi

#File conditions
#File operators
#-d = True if it is a directorie
#-e = True if the file exists
#-f = True if it is a file
#-r = True if the file is readable
#-s = True if the file has a non-zero(more than 0) size value
#-w = True if the file is writable
#-x = True if the file is executable

#Case conditions
read -p "Do you like pizza? Y/N : " ANSWER
case "$ANSWER" in
	[yY])
		echo "Here, have a slice :)"
		;;
	[nN])
		echo "Bad for you :("
		;;
	*)
		echo "Please enter y/Y or n/N"
		;;
esac


#For loop
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
	do
		echo "Hello $NAME"
done

#While loop
WHILEY="True"

while [ "$WHILEY" = "True" ]; do
	read -p "Continue or cancel? " ACTION
	if [ "$ACTION" = "Continue" ]; then
		echo "Ok."
	elif [ "$ACTION" = "Cancel" ]; then
		echo "Ok, cancelling."
		WHILEY="False"
	else
		echo "Spell the actions with a capital letter at the start."
	fi
done



#Functions

#function greet() {
#	echo "Hello I am $1 and I am $2"
#}


#greet "Tomas" "13 years old."

