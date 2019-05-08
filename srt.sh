#!/bin/bash
echo "enter maximum number"
read n
echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
read arr[$i]
done
echo "Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
echo ${arr[$i]}
done
for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${arr[$i]} -gt ${arr[$j]}  ]; 
then
t=${arr[$i]}
arr[$i]=${arr[$j]}
arr[$j]=$t
fi
done
done

echo  "\nSorted Numbers "
for (( i=0; i < $n; i++ ))
do
echo ${arr[$i]}
done
