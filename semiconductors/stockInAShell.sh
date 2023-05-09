INPUT=$1
ONGC="ongc"
OCCI="occi"
if [ $# -eq 0 ]
then
    echo "valid options are"
    echo $ONGC $OCCI 
    exit 1
fi
if [[ $INPUT == $ONGC ]]
then
    awk 'BEGIN  { OFS="             "} {
        for(i=2; i<=NF; i++) {
            tmp=match($i,/^[+]?[0-9]*\.?[0-9]+$/)
            if (tmp) {
                print $1
            }
        }
    }' /Users/sachinjain/Desktop/AllData/stocks/ongc.txt
fi
if [[ $INPUT == $OCCI ]]
then
    awk 'BEGIN  { OFS="             "} {
        for(i=2; i<=NF; i++) {
            tmp=match($i,/^[+]?[0-9]*\.?[0-9]+$/)
            if (tmp) {
                print $1
            }
        }
    }' /home/sachin/Desktop/AllData/stocks/occidental.txt
fi

