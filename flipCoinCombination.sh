#!/bin/bash

echo "Welcome to Flip Coin Combination Problem"$'\n'

declare -A doubletD

DH=0
DT=0

t1=$(( RANDOM%2 ))
t2=$(( RANDOM%2 ))
t3=$((RANDOM%2))

for (( i = 0; i < 100; i++ )); do

if [ $t1 -eq 0 ] && [ $t2 -eq 0 ] && [ $t3 -eq 0 ]
then
	((DH++))
	doubletD[$i]="HHH"
elif  [ $t1 -eq 1 ] && [ $t2 -eq 1 ] && [ $t3 -eq 1 ]
then
	((DT++))
	doubletD[$i]="TTT"
fi
done

echo ${doubletD[@]}
#percentage=$(bc<<<singleH/11")
echo "Percentage of Heads for doublet Dictionary: $DH%"
echo "Percentage of Tails for doublet Dictionary: $DT%"$'\n'
