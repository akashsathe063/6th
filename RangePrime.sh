read -p "Enter a Number: " num
for((i=1;i<=n;i++))
do
  temp=0
for((j=2;j<=$(($i-1));j++))
do
  if[ $(($i%$j)) -eq 0 ]
then
      temp=$(($temp+1))
 fi
done

if[ $temp -eq 0 ]
then 
     echo $i
fi
done


















