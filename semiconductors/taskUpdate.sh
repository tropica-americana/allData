#! /bin/bash 

TEXT_FILE="/Users/sachinjain/desktop/alldata/dailyEventsAndQuotations/task.txt"
if [ $# -eq 0 ]
then
    echo $(cat $TEXT_FILE)
    exit 1 
fi
if [ $1 = "show" ]
then
    echo $(cat $TEXT_FILE)
    # where cat means concatenate
    # basically it means to print the contents of the file
fi
if [ $1 = "add" ]
then
    shift 
    echo $@ > /Users/sachinjain/desktop/alldata/dailyEventsAndQuotations/task.txt
fi
#  if there is no passed parameters then it will show the contents of the file
# where $# means the number of parameters passed