#!/bin/bash

# ANSI escape codes for colors
RED='\033[0;31m'
NC='\033[0m' # No Color

cat "$1" | awk '{
    for (i = 1; i <= NF; ++i) {
        word = $i;
        prefix = substr(word, 1, 3);
        suffix = substr(word, 4);
        printf "%s%s%s ", "'${RED}'", prefix , "'${NC}'"suffix;
    }
    print "";
}'
