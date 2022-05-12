#!/bin/bash -x

function CalculateWorkingHours(){

case $1 in

0)
   workingHours=0
;;
1)
   workingHours=8
;;
2)
  workingHours=4
;;
esac
echo $workingHours
}

perHourSalary=20
TotalSalary=0
TotalWorkingHours=0
day=1
while [[ $day -le 20 && $TotalWorkingHours -lt 40 ]]
do
  wHour=$(CalculateWorkingHours $((RANDOM%3)) )
TotalWorkingHours=$(($TotalWorkingHours+$wHour))
if [ $TotalWorkingHours -gt 40 ]
then
     TotalWorkingHours=$(($TotalWorkingHours-$wHour))
break;

fi

salary=$(( $perHourSalary*$wHour ))
TotalSalary=$(($TotalSalary+$salary))
((day++))
 
done
echo "Employee earned $TotalSalary"
