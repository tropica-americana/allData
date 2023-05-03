#! /bin/bash 
BIONIFY="/Users/sachinjain/Desktop/AllData/semiconductors/bionify.sh" # 
if [ $1 == "chess" ] ;  
then 
	if [ $2 == "open"]
	then 
		code ./Users/sachinjain/Desktop/AllData/semiconductors/debugChess.txt
		exit 0 
	fi
	$BIONIFY /Users/sachinjain/Desktop/AllData/semiconductors/debugChess.txt
	exit 0 
fi 


if [ $1 == "code" ]
then 
	if [ $2 == "open"]
	then 
		code  ./Users/sachinjain/Desktop/AllData/semiconductors/debug.txt
		exit 0 
	fi
	$BIONIFY /Users/sachinjain/Desktop/AllData/semiconductors/debug.txt
	exit 0 
fi

