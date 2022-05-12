#!/bin/bash -x

n=$*
t= `1.0 | bc`
sum=0
for((i=1;i<=n;i++))
do
  H=$(($t/$i)) 

sum=$(($sum+$H)) | bc

done

echo $sum
