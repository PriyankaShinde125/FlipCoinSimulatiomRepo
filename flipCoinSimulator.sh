#! /bin/bash -x

isHead=1
toss=$((RANDOM%2))
if [ $toss -eq $isHead ]
then
	echo "Head wins"
	else
	echo "tail wins"
fi
