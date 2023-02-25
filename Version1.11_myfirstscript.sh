#!/bin/bash

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