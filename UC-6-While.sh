#!/bin/bash -x

isparttime=1
isfulltime=2
maxrateinmonth=100
emprateperhr=20
numofworkingdays=20

totalemphr=0
totalworkingdays=0

while [[ $totalemphr -lt $maxrateinmonth &&
         $totalworkingdays -lt $numofworkingdays ]]
do
	((totalworkingdays++))
	randomcheck=$((RANDOM%3))
	case $randomcheck in
				$isparttime )
					emphrs=4
				;;
				$isfulltime )
					emphrs=8
				;;
				* )
					emphrs=0
				;;
	esac

	totalemphr=$(($totalemphr+$emphrs))
done
	totalsalary=$(($totalemphr*$emprateperhr))
