#!/bin/bash 

palindrome=()
count=0
	echo " Repeated Numbers are : "

for (( num=10; num<=100; num++ ))
do
	if [[ $num%11 -eq 0 ]]
	then
		count=count+num
		palindrome+=($num)
	fi
done
	echo ${palindrome[@]}









