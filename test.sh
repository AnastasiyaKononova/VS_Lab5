#!/bin/bash

sudo sh load.sh

function check {
    echo $1 > /dev/first
    echo $2 > /dev/operator
    echo $3 > /dev/second
	 result=$(cat /proc/result)
    if [ "$4" == "$result" ]; then
        echo "Yes"
    else
        echo "No"
	echo "Expected:"
	echo "$4"
	echo "Getted:"
	echo "$result"
    fi
}

check 3 + 3 "6"
check 3 - 1 "2"
check 3 - 23 "-20"
check 6 / 2 "3"
check 600 / 0 "NaN"
check 2 p 4 "8"
check 3 p 2 "6"
check 9 p 2 "10"


