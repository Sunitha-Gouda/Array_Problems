#!/bin/bash

for (( num=0; num<=10; num++ ))
do
   res[num]=$((RANDOM%900+10))
done
   echo " Random Array : " ${res[@]}
array=($(for i in ${res[@]}
   do
      echo  $i
   done | sort -n))
      echo " Sorted array : " ${array[@]}
      echo " 2nd Smallest number : " ${array[1]}
      echo " 2nd Largest number : " ${array[9]}


