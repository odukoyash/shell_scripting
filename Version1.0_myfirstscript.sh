#!/bin/bash

#creating my first directory
echo " I will be creating my first directory"
mkdir  /c/apps/terraform/tf/stackit/practicedir_jul22_shina/myfirstdir

#creating and writing a file
echo " I love working at stackit solution, its the best place to be" >> /c/apps/terraform/tf/stackit/practicedir_jul22_shina/myfirstfile.txt

#copying my first file into my first directory
echo "I will be copying my first file into my directory"
cp /c/apps/terraform/tf/stackit/practicedir_jul22_shina/myfirstfile.txt /c/apps/terraform/tf/stackit/practicedir_jul22_shina/myfirstdir

#Listing the content of my firstdir
echo " I will be listing the content of my first directory "
ls -ltr /c/apps/terraform/tf/stackit/practicedir_jul22_shina/myfirstdir

echo " end of my script"