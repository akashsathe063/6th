#!/bin/bash -x

read -p "Enter a Number: " num

temp=0;

for ((i=2;i<=$((num-1));i++))

do

  if [ $((num%i)) -eq 0 ]

then
   temp=$(($temp+1));

fi
done

 if [ $temp -eq 0 ]

then 
     echo " Prime";

else
    echo " number is not prime ";

fi
