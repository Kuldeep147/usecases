#!/bin/bash -x

ispresent=1
randomcheck=$((RANDOM%2))
# if [ $ispresent -eq $randomcheck ]
if (( $ispresent == $randomcheck ))
then
	echo employee is present
else
	echo employee is absent
fi
