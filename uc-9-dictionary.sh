#!/bin/bash -x

isparttime=1
isfulltime=2
maxrateinmonth=100
emprateperhr=20
numofworkingdays=20

totalepmhr=0
totalworkingdays=0

function getworkhr()
{
        randomcheck=$((RANDOM%3))
        case  $randomcheck in
                        $isparttime)
                                        emphrs=4;;
                        $isfulltime)
                                        emphrs=8;;
                        *)
                                        emphrs=0;;
        esac
}

function getempwage()
{
	echo $(($totalemphr*$emprateperhr))
}

while [[ $totalemphr -lt $maxrateinmonth && $totalworkingdays -lt $numofworkingdays ]]
do
        ((totalworkingdays++))
        getworkhr
        totalemphr=$(($totalemphr+$emphrs))
        dailywages[$totalworkingdays]=$(($emphrs*$emprateperhr))
done

totalsalary=$( getempwage )
echo $totalsalary
echo ${dailywages[@]}
echo ${!dailywages[@]}
echo ${#dailywages[@]}
