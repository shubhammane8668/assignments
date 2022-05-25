#!/bin/bash -x

ispartTime=1
isfullTime=2
empRatePerHr=20
randomcheck=$((RANDOM%3))

if [ $ispartTime -eq $randomcheck ]
then
	empHrs=4
elif [ $isfullTime -eq $randomcheck ]
then
	empHrs=8
else
	empHrs=0
fi

salery=$(($empHrs*$empRatePerHr))
