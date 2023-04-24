#!/bin/bash

change_directory() {
    FILE_LOCATION=$1

    if [ -z "$FILE_LOCATION" ]; then
        echo "Error: Please provide a directory path."
        return 1
    fi

    if [[ ! $FILE_LOCATION =~ ^/ ]]; then
        # If the path is relative, prepend /Users/sachinjain/Desktop
        FILE_LOCATION="/Users/sachinjain/Desktop/$FILE_LOCATION"
    fi

    if [ ! -d "$FILE_LOCATION" ]; then
        echo "Error: Directory does not exist: $FILE_LOCATION"
        return 1
    fi

    cd "$FILE_LOCATION"
}

change_directory "$@"
