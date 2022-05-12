#!/bin/bash -x

function palindrom(){
rev=0
while[ $num -gt 0 ]
do
  s=$(($num%10))
 rev=$(($(($rev*10))+$s))
  num=$(($num/10))
done

echo $rev

}

read -p "enter a number : " num

temp=$num

fun="$( palindrom ($num) )"

echo $fun

if [ $fun -eq $temp ]
then
   echo "The number are palindrom"
fi
