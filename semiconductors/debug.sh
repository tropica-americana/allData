#!/bin/bash

debugEXE="/home/sachin/Desktop/AllData/semiconductors/debug.exe"
debugCPP="/home/sachin/Desktop/AllData/semiconductors/debug.cpp"

# Compiling the debug.cpp file
g++ -std=c++17 -o $debugEXE $debugCPP

# Running the debug.exe file
/home/sachin/Desktop/AllData/semiconductors/debug.exe

# BIONIFY="/home/sachin/Desktop/AllData/semiconductors/bionify.sh" # 
# if [ $1 == "chess" ] ;  
# then 
# 	if [ $2 == "open"]
# 	then 
# 		code ./home/sachin/Desktop/AllData/semiconductors/debugChess.txt
# 		exit 0 
# 	fi
# 	$BIONIFY /home/sachin/Desktop/AllData/semiconductors/debugChess.txt
# 	exit 0 
# fi 


# if [ $1 == "code" ]
# then 
# 	if [ $2 == "open"]
# 	then 
# 		code  ./home/sachin/Desktop/AllData/semiconductors/debug.txt
# 		exit 0 
# 	fi
# 	$BIONIFY /home/sachin/Desktop/AllData/semiconductors/debug.txt
# 	exit 0 
# fi
