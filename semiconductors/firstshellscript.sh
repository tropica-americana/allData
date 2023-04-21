
#! /bin/bash

USERINPUT=$1
OUTPUT_VARIABLE="shell scripting is fun again"
echo  $OUTPUT_VARIABLE 
echo "please enter something here"
read something 
echo "that some tthing is $something "

if [ -f "commandlineNotes.txt" ]
then  
    echo "commandlineNotes.txt is found "

else 
    echo "commandlineNotes.txt is not found" 

fi 

# for NAME in $@ 
# do 
#     echo "name: $NAME"
# done 

echo "please enter a name of the file to check in the directory"
read nameOfTheFile 

if [ -d $nameOfTheFile ]
then 
    echo "this is a directory"
fi 

if [ -f $nameOfTheFile ]
then 
    echo "this is a file " 
else 
    echo "file not found"
fi 

echo $USERINPUT

for USERINPUTNAME in  $@ 
do 
    if [ -d $USERINPUTNAME ]
    then 
    echo "this is a directory"
    fi 

    if [ -f $USERINPUTNAME ]
    then 
        echo "this is a file " 
    else 
        echo "file not found"
    fi 

done 

