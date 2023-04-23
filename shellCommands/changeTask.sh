#!/bin/bash

# This script is used to change the BitBar task

# Taking all the parameters and joining them with spaces
TASK="$@"
# Change this variable to your current task
CURRENT="$TASK"
# Display the current task in the menu bar
final_string="CURRENT_TASK=\"$CURRENT\""
echo_line="echo \"\$CURRENT_TASK\""

# Write the final_string and echo_line to the file, separated by a newline
echo -e "$final_string\n$echo_line" > /Users/sachinjain/Desktop/AllData/currentTask.sh
