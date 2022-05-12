#!/bin/bash -x

read -p "enter a number : " num

for (( i=2; $((i*i))<=num; i++ ))
do
  while (( $(($num%$i)) == 0 ))
do
  num=$(($num/$i))
  echo $i
done
done
if (( $num != 1 ))
then
    echo $num
fi
