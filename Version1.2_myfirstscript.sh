#!/bin/bash

#Description:: This requires your script to be able to take in command line arguments to facilitate backups"
#UserStory :As a Cloud Engineer,I want to pass command line arguments to my backup script,so that my backup script can execute dynamically
#Acceptance criterial:Given I am a Cloud Engineer,When I run my backup script with command line arguments, Then the backup file is created in the runner's backup location path

#File to be backup
#creating a directory to backup

#COMMAND LINE ARGUEMENT
#Passing argument into a script or file


backup_location=$1

export PRACTICEDIR="/c/apps/terraform/tf/stackit/practicedir_jul22_shina"
#export DIR=$1
export FILE="myfirstfile.txt"


#creating my first directory
echo " I will be creating my first backup directory"
mkdir ${PRACTICEDIR}/${backup_location}

#copying my first file into my first directory
echo "I will be copying my first file into my backup directory"
cp ${PRACTICEDIR}/${FILE} ${PRACTICEDIR}/${backup_location}

#Listing the content of my firstdir
echo " I will be listing the content of my first backup directory "
ls -ltr ${PRACTICEDIR}/${backup_location}

#counting the content of my first backup directory
ls -ltr ${PRACTICEDIR}/${backup_location}|wc -l




echo " end of my script"