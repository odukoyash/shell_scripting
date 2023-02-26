#!/bin/bash

#Description:: This requires your script to be able to take in command line arguments to facilitate backups"
#UserStory :As a Cloud Engineer,I want to pass command line arguments to my backup script,so that my backup script can execute dynamically
#Acceptance criterial:Given I am a Cloud Engineer,When I run my backup script with command line arguments, Then the backup file is created in the runner's backup location path

# to be backup a directory
#creating a directory to backup

#COMMAND LINE ARGUEMENT
#Passing argument into a script or file

DIR=$1
BACKUP_LOCATION=$2
RUNNER=$3


PRACTICEDIR="/c/apps/terraform/tf/stackit/practicedir_jul22_shina"
FINAL_BACKUP_LOCATION=${PRACTICEDIR}/${BACKUP_LOCATION}


#creating my first backup directory location
echo " I will be creating my first backup directory"
mkdir -p ${DIR}

#copying a file(s) into my backup location
echo "I will be copying file(s) into my backup location"
cp -R ${DIR} ${FINAL_BACKUP_LOCATION}

#Listing the content of my firstdir
echo " I will be listing the content of  backup location "
ls -ltr ${FINAL_BACKUP_LOCATION}

#counting the content of my backup location
echo " I will be counting the files in the backup location"
ls -ltr ${FINAL_BACKUP_LOCATION}|wc -l




echo " end of my script"