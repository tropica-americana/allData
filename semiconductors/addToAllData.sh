#!/bin/bash

INPUT=$1
shift
ASSOCIATE="asc"
C_PLUS_PLUS="cpp"
CVS="cvs"
VALID_INPUTS=($ASSOCIATE $C_PLUS_PLUS $CVS)
USER_INPUT="-------------------------------------------------\n\n$@\n\n-------------------------------------------------"

if [[ $INPUT == $ASSOCIATE ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/associations.txt

elif [[ $INPUT == $C_PLUS_PLUS ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/semiconductors/c++.txt

elif [[ $INPUT == $CVS ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/medicine/uworld/CVS.txt

else
    echo "invalid input"
    echo "valid inputs are --> ${VALID_INPUTS[@]}"

fi
