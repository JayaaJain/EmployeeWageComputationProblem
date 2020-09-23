monthWage=0
#functions
function dayPerMonthWage {
   echo "Calculating using days per month"
   monthWage=`expr 20 \* 20 \* 8`
   echo "Monthly wage for 20 working days is $monthWage"
}

function hourPerMonthWage {
   echo "Calculating using hours per month"
   monthWage=`expr 100 \* 8`
   echo "Monthly wage for 100 hours per month $monthWage"
}

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
#partTimeEmployee&Wage
partTimeWage=`expr $dailyWage + 20 \* 8`
echo "After adding part time wage, the Total wage is $partTimeWage"
#solving using switch cases
read -p "how do you want to calculate the wage ? 1.DayPerMonth OR 2.HoursPerMonth : " choice
case $choice in 
1) dayPerMonthWage
;;
2) hourPerMonthWage
;;
esac
DailyTotalWage() {
echo "Total wage is : $2 , daily wage is : $1 and Day wage is $3"
}

DailyTotalWage $dailyWage $partTimeWage $monthWage
