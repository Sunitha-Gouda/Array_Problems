#!/bin/bash

for (( num=0; num<=10; num++ ))
do
   res=$((RANDOM%900+10))
   for val in ${res[@]}
   do
      for (( i=0; i<10; i++ ))
      do
         for (( j=$(($i+1)); j<10; j++ ))
         do
            if [[ ${res[i]} -gt ${res[j]} ]]
            then
               temp=${res[i]}
               res[$i]=${res[j]}
               res[$j]=$temp
            fi
         done
      done
   done
done

	echo " Array in Ascending Order: " ${res[@]}
	echo " 2nd Smallest Number in Array: " ${res[1]}
	echo " 2nd Largest Number in Array: " ${res[8]}





