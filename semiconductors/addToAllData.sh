#!/bin/bash

INPUT=$1
shift
ASSOCIATE="asc"
C_PLUS_PLUS="cpp"
CVS="cvs"
RADO="rad"
WORD="word"
OPEN="open"
VALID_INPUTS=($ASSOCIATE $C_PLUS_PLUS $CVS $OPEN $RADO $WORD)
USER_INPUT="-------------------------------------------------\n\n$@\n\n-------------------------------------------------"
if [[ $INPUT == $OPEN ]]; then
    open /Users/sachinjain/Desktop/AllData/semiconductors/addToAllData.sh
    exit 0
fi

if [[ $INPUT == $ASSOCIATE ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/associations.txt

elif [[ $INPUT == $C_PLUS_PLUS ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/semiconductors/c++.txt

elif [[ $INPUT == $CVS ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/medicine/uworld/CVS/CVS.txt

elif [[ $INPUT == $WORD ]]; then
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/words.txt
elif [[ $INPUT == $RADO ]]; then

    ROD="---------------------------"
    PASTEDDATA=$(pbpaste)
    echo -e $ROD >> /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    printf "%s\n" ""$PASTEDDATA"" >>/Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    echo -e $ROD >> /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    
    
else
    echo "invalid input"
    echo "valid inputs are --> ${VALID_INPUTS[@]}"
    exit 0 
fi

