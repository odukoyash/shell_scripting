#!/bin/bash

# this script creating the backup directory in cloud after it scp t
#Declaring variables
#SRC=The source of the file or directory
#DST=The Destination 

SRC=$1
DST=$2
RUNNER=$3
BACKUPDIR=$4
KEY_LOC=$5
KP=$6
#SERVER=$7

echo "SSHing to cloud server to create directory"
#ssh -i "Albacorre.pem" ec2-user@ec2-52-201-177-143.compute-1.amazonaws.com 
ssh ${DST} -i ${KEY_LOC}/${KP}

#Creating the destination directory
if [[ -d ${BACKUPDIR}/${RUNNER} ]]
then
    echo " Directory already exists,"
else
    echo " The directory does not exist, creating new directorys"
    mkdir ${BACKUPDIR}/${RUNNER}
    #checking the exist status
    if [[ $? == 0 ]]
    then 
        exit
    else
        echo " The directory creation failed"
        exit
    fi
fi

#Now copying file to destination
echo "copying file to destination"
scp ${SRC} ${DST}:${BACKUPDIR}/${RUNNER}

echo " This code copies files and directory to our cloud server"

echo "Ending!!!! file copy"