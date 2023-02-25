#!/bin/bash

#Description This requires your script not to have hard coded string paths, 
echo "As a Cloud Engineer, I want to substitute hard coded paths using environment variables, so that the variables can be updated more efficiently."
echo "ACCEPTANCE CRITERIA: Given, I am Cloud Engineer, When a variable is changed in a single location, Then the variable is substituted in all other loactions of the script."

#variable substitution
export PRACTICEDIR="/c/apps/terraform/tf/stackit/practicedir_jul22_shina"
export DIR="myfirstdir"
export FILE="myfirstfile.txt"


#creating my first directory
echo " I will be creating my first directory"
mkdir ${PRACTICEDIR}/${DIR}

#copying my first file into my first directory
echo "I will be copying my first file into my directory"
cp ${PRACTICEDIR}/${FILE} ${PRACTICEDIR}/${DIR}

#Listing the content of my firstdir
echo " I will be listing the content of my first directory "
ls -ltr ${PRACTICEDIR}/${DIR}



echo " end of my script"