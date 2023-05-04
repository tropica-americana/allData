#!/bin/bash

HABITTEXTFILE="/Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/habitsData.txt"
TEMPFILE="/Users/sachinjain/Desktop/AllData/dailyEventsAndQuotations/temp.txt"
ROD="-----------------------------------------------------------------------"
SMALLROD="--------------"
TODAYS_DATE=$(date "+%Y-%m-%d")
TRAINING_PROMPT="i have certain character traits stored in habits that i wanna get better at \n 
what i want you do , a long scenario which is challenging in nature \n 
which uses high level of thought , speech and body coordination and self control \n 
the scenario should be desribed in detail \n
and then you should judge my answer "

# check whether the $1 is open 
if [ "$1" == "open" ]; then
    code $HABITTEXTFILE
    exit 0
fi
if [ "$1" == "code" ]; then
    code /Users/sachinjain/Desktop/AllData/semiconductors/habitsDataHandler.sh
    exit 0
fi
if [ "$1" == "cat" ]; then
    /Users/sachinjain/Desktop/AllData/semiconductors/bionify.sh $HABITTEXTFILE
    exit 0
fi
if [ "$1" == "train" ] ; then 
    
    exit 0
fi
# Function to create the template
create_template() {
    echo $ROD >> $HABITTEXTFILE
    echo $TODAYS_DATE >> $HABITTEXTFILE
    for i in {1..10}; do
        echo $SMALLROD >> $HABITTEXTFILE
        echo "HABIT $i" >> $HABITTEXTFILE
    done
}

# Search for today's date in the file
grep -q -F "$TODAYS_DATE" "$HABITTEXTFILE"

# Check the exit status of grep to see if the date was found
if [ $? -ne 0 ]; then
    create_template
fi

# Extract the habit number and the event description
habit_number=$(echo $1 | grep -o -E '[0-9]+')
event_description=${@:2}

# Append the input to the corresponding habit using awk
awk -v date="$TODAYS_DATE" -v rod="$ROD" -v habit_number="$habit_number" -v event_description="event \"$event_description\"" '
BEGIN {OFS=FS=""; habit_pattern="HABIT " habit_number "$"}
$0 ~ date, $0 ~ rod {
    if ($0 ~ habit_pattern) {
        print $0; print event_description; next
    }
}
{print}' "$HABITTEXTFILE" > "$TEMPFILE" && mv "$TEMPFILE" "$HABITTEXTFILE"
