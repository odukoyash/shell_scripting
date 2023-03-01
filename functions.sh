#!/bin/bash

#TO RUN THIS SCRIPT -  ./functions.sh scheduled shinkoman_stacks.txt 1

#function definition
f_d_backup()
{
    echo "You called the file or directory backup function">>/c/apps/terraform/tf/stackit/practicedir_jul22_shina/functions.log
}

#Main Body
#scheduled script using control flag
CONTROL_FLAG=$1

if [[ ${CONTROL_FLAG} == "scheduled" ]]
then
    SOURCE=$2
    DECISION=$3

elif [[ ${CONTROL_FLAG} == "notscheduled" ]]
then
    read -p "Enter source file or directory: " SOURCE
    read -p "Enter backup location: " BACKUP_LOCATION
    read -p "Enter a runner: " RUNNER
    read -p "Enter backup type: " BK_TYPE
fi

case ${DECISION} in
    1)  echo "You selected the first option"
        f_d_backup
        ;;
    *)  echo "You selected the wrong options";;
esac    
