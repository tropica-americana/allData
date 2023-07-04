#!/bin/bash
duration=$1 ; 
shift
message=$@
volume="10%"
# Ask for the duration of the timer
# echo "Enter duration of the timer in seconds:"
# read duration

# # Ask for the message
# echo "Enter message to be spoken when timer goes off:"
# read message
amixer -q sset Master 0%	
echo "volume is $volume of master volume and that should be considered "

sleep 2 
# Start the timer
echo "Timer started for $duration seconds."
sleep $duration

while true
do
echo "this is working "
spd-say "$message"
sleep 10
done 
# spd-say "this is the terminal timer and its gonna rock the planet "
