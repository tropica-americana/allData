#!/bin/bash
INPUT=$1
debugEXE="/home/sachin/Desktop/AllData/semiconductors/debug.exe"
debugCPP="/home/sachin/Desktop/AllData/semiconductors/debug.cpp"
DEBUGCHESS="/home/sachin/Desktop/AllData/semiconductors/debugChess.txt"
DEBUGCODE="/home/sachin/Desktop/AllData/semiconductors/debug.txt"
DEBUGHABITS="/home/sachin/Desktop/AllData/dailyEventsAndQuotations/debughabits.txt"
DEBUGMRISEQUENCES="/home/sachin/Desktop/AllData/medicine/radiology/mriSequences.txt"
# Compiling the debug.cpp file
g++ -std=c++17 -o $debugEXE $debugCPP
if [ $? -eq 0 ]
then
    echo "Compilation Successful"
else
    echo "Compilation Failed"
fi
if [[ "$INPUT" == "show" ]];
then 
    echo "Showing the debug files"
    cat $DEBUGCHESS
    cat $DEBUGCODE
    cat $DEBUGHABITS
    cat $DEBUGMRISEQUENCES
fi

# Running the debug.exe file 
# echo $INPUT | 
/home/sachin/Desktop/AllData/semiconductors/debug.exe
