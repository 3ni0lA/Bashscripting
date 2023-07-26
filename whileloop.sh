#!/bin/bash

counter=0 
#the value is true hence why its going to continue looping until stopped using CTRL C#

while [ $counter -lt 5 ] #-lt means lesser than this iteration will become false and loop will terminate#
do
  echo "Looping......"
  echo "Value of counter is $counter. "
  counter=$(($counter + 1)) #
  sleep 1
done

echo "Out of loop. "

