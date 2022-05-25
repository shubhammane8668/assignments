#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
		case $randomcheck in
			$isPartTime )
				empHrs=8
			;;
			$isFullTime )
				empHrs=4
			;;
			* )
				empHrs=0
			;;
		esac
}

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomcheck=$((RANDOM%3))
	getWorkingHours $randomcheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary="$( $getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}

