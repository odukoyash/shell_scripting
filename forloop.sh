#!/bin/bash

#You can loop through a set of files in a directory or sets of schemas in a database and backed them up
#ForLoops (line 14 to 20 is creating a configuration file to backup database schema)
#The body of the code is line 12 and basically creating a file in one file each time that loop run
#we are basically building a config file in one shot using a loop
# the cat open the file and loop through the content
<<comment
for name in shina tom bill sandra
do 
    echo "Name is $name"
done


for schema in SCHEMA1 SCHEMA2 SCHEMA3 SCHEMA
do  
    echo "Userid='/as sysdba'"> expdp_${schema}.par 
    echo "schemas=$schema">> expdp_${schema}.par 
    echo "dumpfile=expdp_${schema}.dmp">> expdp_${schema}.par
    echo "log=expdp_${schema}.log">> expdp_${schema}.par 
done


#INSTEAD OF HAVING HARDCODE SCHEMA LIST, WE WILL PASSING A FILE
for schema in $(cat /c/apps/terraform/tf/stackit/practicedir_jul22_shina/schema_list.txt)
do
   echo "Userid='/as sysdba'"> expdp_${schema}.par 
    echo "schemas=$schema">> expdp_${schema}.par 
    echo "dumpfile=expdp_${schema}.dmp">> expdp_${schema}.par
    echo "log=expdp_${schema}.log">> expdp_${schema}.par 
done


for value in {1..25}
do
    echo "${value}"
done

for value in {2..20..2}
do
    echo "${value}"
done



#using the select statement
names="shinkoman ayotunde afolabi dupe quit"

PS3="Please select name: "

select name in ${names}
do
    if [[ ${name} == 'quit' ]]
    then
        break
    fi
    echo "Hello ${name}"
done
echo "Loop has ended......."


#select statement that alloows user to select scheduled or unscheduled

PILOTS="scheduled unscheduled quit"

PS3="select if you want script to be scheduled or unscheduled: "

select PILOT in ${PILOTS}
do
    echo "You selected ${PILOT}....."
    if [[ ${pilot} == 'quit' ]]
    then
        break
    fi
done
echo " Loop has been broken becaused ${PILOT} was selected......"


#while loop
#counter plus is a way to increament, eg you are 1+1
counter=1

while [[ ${counter} -le 10 ]]
do
    echo "The counter is ${counter}"
    ((counter++))
done
comment

#infinite while loop
#This loop is going to continue going until something else happens and it breaks

FILE=/c/apps/terraform/tf/stackit/practicedir_jul22_shina/shinkoman_stacks.txt

while :
do  
    #echo "This is an infinite while loop............. hit CONTROL C to exit......."
    echo "Checking for for ${FILE}  existence....."
    if [[ -e ${FILE} ]]
    then
        break
    fi
        sleep 1
done
echo "File located, now starting database import..."