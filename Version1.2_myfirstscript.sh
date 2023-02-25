#!/bin/bash

#Description:: This requires your script to be able to take in command line arguments to facilitate backups"
#UserStory :As a Cloud Engineer,I want to pass command line arguments to my backup script,so that my backup script can execute dynamically
#Acceptance criterial:Given I am a Cloud Engineer,When I run my backup script with command line arguments, Then the backup file is created in the runner's backup location path

#File to be backup
#creating a directory to backyup
#variable substitution
export PRACTICEDIR="/c/apps/terraform/tf/stackit/practicedir_jul22_shina"
export DIR="backup"
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

#counting the content of my firstdirectory
ls -ltr ${PRACTICEDIR}/${DIR}|wc -l




echo " end of my script"