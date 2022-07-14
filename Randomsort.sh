#!/bin/bash

arr=(9 8 4 6 5 1)

l1=${arr[0]}
l2='unset'
s1=${arr[0]}
s2='unset'

echo ${arr[@]}
for((i=1; i < ${#arr[@]}; i++))
do
  if [[ ${arr[i]} > $l1 ]]
  then
    l2=$l1
    l1=${arr[i]}
  elif (( ${arr[i]} != $l1 )) && { [[ "$l2" = "unset" ]] || [[ ${arr[i]} > $l2 ]]; }
  then
    l2=${arr[i]}
  fi
 if [[ ${arr[i]} < $s1 ]]
  then
    s2=$s1
    s1=${arr[i]}
  elif (( ${arr[i]} != $s1 )) && { [[ "$s2" = "unset" ]] || [[ ${arr[i]} < $s2 ]]; }
  then
    s2=${arr[i]}
  fi

done

echo "Second Largest = $l2"
echo "Second Smallest = $s2"
