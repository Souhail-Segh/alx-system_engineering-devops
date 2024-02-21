#!/bin/bash

mynum=24
urnum=$mynum
dir=$(pwd)

# -eq: equal
# -ne: not equal
# -gt: greater than
# -lt: less than
# -f: check the presence of a file
# -d: check for a directory

if [ $mynum -lt 26 ]
then
    echo "It's my age"
else
    echo "It's not my age"
fi

if [ ! $urnum -eq 26 ]
then
    echo "It's probably your age"
else
    echo "I'm sure it's not age"
fi

if [ -f $dir/myfile ]
then
    echo "The file exists."
else
    echo "The file doesn't exist."
fi
