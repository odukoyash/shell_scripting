#!/bin/bash

#interactive script that ask the user questions
ls |nl -s '. '
read -p "which file do you want to delete?: " INPUT

chose=$(ls |nl -s '. ' | grep ${INPUT})

#chose=`ls |nl -s '. ' | grep ${INPUT}`

echo "You selected : ${chose}"
chosen=`echo ${chose} | cut -f 2 -d ' '`

#prompting user for verification of delete
read -p "Are you FUCKING!!!!!!!!!! you want to delete ${chosen}, Y(yes) or N(no): " INPUT2
if [[ ${INPUT} == Y || ${INPUT2} == Y ]]
then
    rm -r ${chosen}
    echo "Valid selection, Removing files ${chosen}"
else
    echo "Invalid option, File not deleted"
fi

