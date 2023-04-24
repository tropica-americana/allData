
#! /bin/bash

function number_of_files_in_the_directory () {
    local DIRECTORY_NAME
    read DIRECTORY_NAME
    if [ -d $DIRECTORY_NAME ]
    then 
        cd $DIRECTORY_NAME
        echo "the directory exists and has$(ls -l | wc -l) files"
        cd ..
    else 
        echo "the directory does not exist"
        exit 1
    fi
 
}
function display_number (){
    local VARIABLE 
    read VARIABLE
    echo "the number of files in the directory is $VARIABLE"
}
number_of_files_in_the_directory

# cat /etc/shadow
# EXITSTATUS=$?

# if [ $EXITSTATUS = 0 ];
# then echo "command succeded" ; 
# else 
#     echo " command failed" ;
# fi 

# exit $EXITSTATUS ;



# echo "this script will exit with a status of 0 " 
# echo "please enter a file name "
# read FILENAME 

# if [ -f FILENAME ]
# then
#     EXITSTATUS=0
# fi 
# if [ -d FILENAME ]
# then 
#     EXITSTATUS=1
# else 
#     EXITSTATUS=2
# fi 

# echo "this script will exit with a status of $EXITSTATUS " 

exit $EXITSTATUS
    
