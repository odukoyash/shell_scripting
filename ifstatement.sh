#!/bin/bash

#conditional statement

#command line arguemnet to make this dynamic
x=$1
y=$2
name=$3
echo "The first comm line arg is: $1"
echo "The second comm line arg is: $2"

echo "we have $# command line argument for this conditional."
#dollar pound is to check the command line arguement pass into the script

#check usage
if (( $# != 3 ))
then
    echo    "FAIL!!!!!
            Usage: To run this script, you need
            comm_arg1
            comm_arg2
            "
    exit
fi

#main body
#if conditional statement
#String comparision, we will use bracket bracket [[]]

if [[ $name != 'shinkoman' ]]
then
    echo "Hi $name, welcome to our scripting program and THANK YOU!"
fi

if (( x == 5 ))
then
    echo "x is equal to 5"
else
    echo "x is not equal to 5"
fi

#checking the exist status of a mission critical statement
# This means that if the command didnt run correctly, we need to stop the script or alert someone 
# A zero exit status means it was SUCCESSFUL and non zero means it FAILED
#$? check 

cat /c/apps/terraform/tf/stackit/practicedir_jul22_shina/myfile.txt
if (( $? == 0 ))
then
    echo "The cat command ran SUCCESSFULLY"
else 
    echo "The cat command FAILED"
fi

