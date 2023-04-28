INPUT=$1
ONGC="ongc"
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
