#!/bin/bash

counter=0

while [ $counter -lt 5 ]
do
	echo "Looping"
	echo "Value of counter is $counter"
	echo
	counter=$(( $counter + 1 ))
done
