#! /bin/bash -x

isHead=1
headWon=0
tailWon=0
echo "enter number of times do you want to play"
read n
for ((i=0;i<n;i++))
do
toss=$((RANDOM%2))
if [ $toss -eq $isHead ]
then
	((headWon++))
	else
	((tailWon++))
fi
done

echo "head won $headWon times"
echo "tail won $tailWon times"
