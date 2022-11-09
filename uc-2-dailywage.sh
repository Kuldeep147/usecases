#!/bin/bash -x

ispresent=0
randomcheck=$((RANDOM%2))

if (( $ispresent == $randomcheck ))
then
	emphrs=8
	emprateperhr=20
	salary=$(($emphrs*$emprateperhr))
else
	salary=0
fi
echo daily wage : $salary
