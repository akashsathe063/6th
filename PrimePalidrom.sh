#!/bin/bash -x

function isprime(){
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
     echo $num;

else
    echo " number is not prime ";

fi



}

function ispalin(){
t=$num
rev=0
while(( $t > 0 ))
do
   rem=$(($t%10))

   rev=$(( $(( rev*10 )) + $rem ))
   t=$(($t/10))
done

echo $rev
if [ $num -eq $rev ]
then
    echo  $num
else
    echo "not palindrom"
fi
}

read -p "enter a number : " num
if (( $(isprime $($num)) == $(ispalin $($num)) )) 
then
    echo "number is palindrom and prime " 
else
    echo "Number is not palindrom and prime"
fi

