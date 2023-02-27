#!/bin/bash

dir_check=$1
file_check=$2
log_file=$3
#appending all the echo into the log file
echo "The Directory being created is: ${dir_check}">>${log_file}
echo "The log file location is : ${log_file}">>${log_file}


if [[ -d ${dir_check} ]]
then
    echo "Directory already exists, sleeping for 10 seconds..........">>${log_file}
    sleep 10
else
    echo "Directory does not exist, creating new directory: ${dir_check} ........">>${log_file}
    mkdir -p ${dir_check}
fi

#file check
if [[ -d ${file_check} ]]
then
    echo "file already exists, sleeping for 10 seconds.........."
    sleep 10
else
    echo "File does not exist, creating new file: ${file_check} ........"
    touch ${file_check}
fi

#file check
if [[ -d ${file_check} ]]
then
    echo "file already exists, sleeping for 10 seconds.........."
    sleep 10
else
    echo "File does not exist, copying file into the new directory: ${file_check} ........"
    cp ${file_check} ${dir_check}
fi
