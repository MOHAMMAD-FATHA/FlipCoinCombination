#!/bin/bash

echo "Welcome to Flip Coin Combination Problem"$'\n'

declare -A tripletD

TH=0
TT=0

t1=$(( RANDOM%2 ))
t2=$(( RANDOM%2 ))
t3=$((RANDOM%2))

for (( i = 0; i < 100; i++ )); do

if [ $t1 -eq 0 ] && [ $t2 -eq 0 ] && [ $t3 -eq 0 ]
then
	((TH++))
	tripletD[$i]="HHH"
elif  [ $t1 -eq 1 ] && [ $t2 -eq 1 ] && [ $t3 -eq 1 ]
then
	((TT++))
	tripletD[$i]="TTT"
fi
done

echo ${tripletD[@]}
#percentage=$(bc<<<singleH/11")
echo "Percentage of Heads for Triplet Dictionary: $TH%"
echo "Percentage of Tails for Triplet Dictionary: $TT%"$'\n'
