#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
numofworkingdays=20

totalsalary=0

for (( day=1; day<=$numofworkingdays; day++ ))
do
	randomcheck=$((RANDOM%3))
	case $randomcheck in
			$isparttime)
					emphrs=4;;
			$isfulltime)
					emphrs=8;;
			*)
					emphrs=0;;
	esac
	salary=$(($emprateperhr*$emphrs))
	totalsalary=$(($salary+$totalsalary))
done
echo totalsalary is $totalsalary
