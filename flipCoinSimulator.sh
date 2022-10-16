#! /bin/bash -x

isHead=1
headWon=0
tailWon=0
flag=0
 
while [[ $flag -lt 1 ]]
do
toss=$((RANDOM%2))
if [ $toss -eq $isHead ]
then
	((headWon++))
	else
	((tailWon++))
fi
if [[ $headWon -eq 21 || $tailWon -eq 21 ]]
then
	flag=1
	break
fi
done

echo "head won= $headWon     tail won= $tailWon"
if [[ $headWon -eq $tailWon ]]
then
	echo "Tie"
fi

if [[ $headWon -gt $tailWon ]]
then
	echo "Head won by " $(($headWon-$tailWon))
else
	echo "Tail won by " $(($tailWon-$headWon))
fi
