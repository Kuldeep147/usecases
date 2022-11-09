#!/bin/bash -x

isparttime=1
isfulltime=2
emprateperhr=20
randomcheck=$((RANDOM%3))

if [ $isparttime -eq $randomcheck ]
then
	emphrs=4
elif [ $isfulltime -eq $randomcheck ]
then 
	emphrs=8
else
	emphrs=0
fi
salary=$(($emprateperhr*$emphrs))
echo salary is $salary
