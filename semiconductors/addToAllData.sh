#!/bin/bash

cd Desktop/AllData

INPUT=$1
SECONDINPUT=$2
shift
ASSOCIATE="asc"
C_PLUS_PLUS="cpp"
CVS="cvs"
RADO="rad"
WORD="word"
OPEN="open"
IDEA="idea"
EVENT="evt"
STORY="stry"
PROMPT="prompt"
COMMANDLINE="cmd"
BUG="bug"
BIONIFY="/home/sachin/Desktop/AllData/semiconductors/bionify.sh" # cat command on steroids
VALID_INPUTS=($ASSOCIATE $C_PLUS_PLUS $CVS $OPEN $RADO $WORD $IDEA $EVENT  $STORY $COMMANDLINE $PROMPT)
USER_INPUT="-------------------------------------------------\n\n$@\n\n-------------------------------------------------"

if [[ $INPUT == $OPEN ]]; then
    open /home/sachin/Desktop/AllData/semiconductors/addToAllData.sh
    exit 0
fi

if [[ $INPUT == $ASSOCIATE ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/associations.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/associations.txt
        exit 0
    fi
    
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/associations.txt

elif [[ $INPUT == $C_PLUS_PLUS ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/semiconductors/c++.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/semiconductors/c++.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/semiconductors/c++.txt

elif [[ $INPUT == $PROMPT ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/prompt.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/prompt.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/prompt.txt
    
elif [[ $INPUT == $CVS ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/medicine/uworld/CVS/CVS.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/medicine/uworld/CVS/CVS.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/medicine/uworld/CVS/CVS.txt

elif [[ $INPUT == $WORD ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/words.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/words.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/words.txt
elif [[ $INPUT == $RADO ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        exit 0
    elif [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        exit 0
    # checking if $2 is empty 
    elif [[ -z $SECONDINPUT ]]; then
        ROD="---------------------------"
        PASTEDDATA=$(pbpaste)
        echo -e $ROD >> /home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        printf "%s\n" "$PASTEDDATA" >>/home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        echo -e $ROD >> /home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        # displaying the contents anyway 
        $BIONIFY /home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        exit 0
    # if second input is not empty and not any of the above then it is a command
    else
        echo -e $USER_INPUT >> /home/sachin/Desktop/alldata/medicine/radiology/radiology.txt
        exit 0
    fi

elif [[ $INPUT == $IDEA ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/ideas.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/ideas.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/ideas.txt
elif [[ $INPUT == $BUG ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/bugs.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/bugs.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/bugs.txt  
elif [[ $INPUT == $EVENT ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/events.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/events.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/events.txt
elif [[ $INPUT == $STORY ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/dailyEventsAndQuotations/stories.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/dailyEventsAndQuotations/stories.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/dailyEventsAndQuotations/stories.txt

elif [[ $INPUT == $COMMANDLINE ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /home/sachin/Desktop/AllData/semiconductors/commandlineNotes.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /home/sachin/Desktop/AllData/semiconductors/commandlineNotes.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /home/sachin/Desktop/AllData/semiconductors/commandlineNotes.txt
else
    echo "invalid input"
    echo "valid inputs are --> ${VALID_INPUTS[@]}"
    exit 0 
fi