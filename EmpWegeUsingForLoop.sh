#!/bin/bash -x

perHourSalary=20;

WorkingHours=0;

TotalSalary=0;

for((day=1;day<=20;day++))
do
   ispresent=$((RANDOM%3))

case $ispresent in

0)
  WorkingHours=0
;;
1)
    echo "employee working at full time"
  WorkingHours=8
;;
2)
   echo "employee working at part time"
    WorkingHours=4
;;

esac

salary=$(($WorkingHours*$perHourSalary))

TotalSalary=$(($TotalSalary+$salary)) 
done
echo "Employee Earned $TotalSalary" 
