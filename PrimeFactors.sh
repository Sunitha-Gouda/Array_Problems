#!/bin/bash -x

declare -a primeFactors=()
read -p " Enter a number to get factors of prime number= "  num

for (( i=2; i<=$num; i++ ))
do
   if [ $(( $num%$i )) -eq 0 ]
   then
         isprime=1

      for (( j=2; j<=$(($i/2)) ; j++ ))
      do

         if [ $(( $i%$j )) -eq 0 ]
         then
            isprime=0
            break
         fi
      done

         if [ $isprime -eq 1 ]
         then
            primeFactors+=($i)
         fi
   fi

done
   echo ${primeFactors[@]}


