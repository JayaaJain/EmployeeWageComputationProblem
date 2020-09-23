#displayStart
echo "WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM"
#checkAttendance
for ((numOfEmployees=0; numOfEmployees<=5; numOfEmployees++))
do
  var=$((RANDOM%50+1))
  read -p " Is Employee number $var 1.Present OR 2.Absent ? : " Attendance
  if [ $Attendance -eq 1 ]
     then 
        echo "Employee number $var is Present"
  else	
	echo "Employee number $var is Absent"
  fi
done
#CalculateDailyEmployeeWage
dailyWage=`expr 20 \* 8`
echo "Daily employee wage is $dailyWage"

 
