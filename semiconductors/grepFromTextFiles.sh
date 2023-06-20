

#! /bin/bash

TEXT=$1
DIR=pwd 

cd  /Desktop/AllData

grep --color=auto  -r --include *.txt $TEXT

cd $DIR

exit 0 