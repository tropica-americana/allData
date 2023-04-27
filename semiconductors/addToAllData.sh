#!/bin/bash
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
COMMANDLINE="cmd"
BIONIFY="/Users/sachinjain/Desktop/AllData/semiconductors/bionify.sh" # cat command on steroids
VALID_INPUTS=($ASSOCIATE $C_PLUS_PLUS $CVS $OPEN $RADO $WORD $IDEA $EVENT  $STORY $COMMANDLINE)
USER_INPUT="-------------------------------------------------\n\n$@\n\n-------------------------------------------------"

if [[ $INPUT == $OPEN ]]; then
    open /Users/sachinjain/Desktop/AllData/semiconductors/addToAllData.sh
    exit 0
fi

if [[ $INPUT == $ASSOCIATE ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/associations.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/associations.txt
        exit 0
    fi
    
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/associations.txt

elif [[ $INPUT == $C_PLUS_PLUS ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/semiconductors/c++.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/semiconductors/c++.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/semiconductors/c++.txt

elif [[ $INPUT == $CVS ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/medicine/uworld/CVS/CVS.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/medicine/uworld/CVS/CVS.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/medicine/uworld/CVS/CVS.txt

elif [[ $INPUT == $WORD ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/words.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/words.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/words.txt
elif [[ $INPUT == $RADO ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
        exit 0
    fi

    ROD="---------------------------"
    PASTEDDATA=$(pbpaste)
    echo -e $ROD >> /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    printf "%s\n" "$PASTEDDATA" >>/Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    echo -e $ROD >> /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    # displaying the contents anyway 
    $BIONIFY /Users/sachinjain/Desktop/alldata/medicine/radiology/radiology.txt
    
elif [[ $INPUT == $IDEA ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/ideas.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/ideas.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/ideas.txt
elif [[ $INPUT == $EVENT ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/events.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/events.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/events.txt
elif [[ $INPUT == $STORY ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/stories.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/stories.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/stories.txt

elif [[ $INPUT == $COMMANDLINE ]]; then
    if [[ $SECONDINPUT == $OPEN ]]; then
        open /Users/sachinjain/Desktop/AllData/semiconductors/commandlineNotes.txt
        exit 0
    fi
    if [[ $SECONDINPUT == "cat" ]]; then 
        $BIONIFY /Users/sachinjain/Desktop/AllData/semiconductors/commandlineNotes.txt
        exit 0
    fi
    echo -e $USER_INPUT >> /Users/sachinjain/Desktop/AllData/semiconductors/commandlineNotes.txt
else
    echo "invalid input"
    echo "valid inputs are --> ${VALID_INPUTS[@]}"
    exit 0 
fi
