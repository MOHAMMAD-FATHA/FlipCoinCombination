echo "Welcome to Flip Coin Combination"

i=1
H=0
T=0
while [ $i -le 11 ]
do
Result=$((RANDOM%2))
if [ ${Result} -eq 0 ]
then
    echo HEADS
    H=$(($H+1))
elif [ ${Result} -eq 1 ]
then
    echo TAILS
    T=$(($T+1))
fi
i=$(($i+1))
done

echo $T
echo $H
#max1=`echo | awk "{print sqrt($H/11)}"`
#max2=`printf %.0f "$max1"`

percentofHead=$(($H/11*100))
percentofTail=$(($T/11*100))

echo $percentofHead
echo $percentofTail
