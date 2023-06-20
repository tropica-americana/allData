#!/bin/bash
inotifywait -m ~/Desktop/Screenshots -e create -e moved_to |
    while read dir action file; do
        if [[ "$file" =~ .*\.png$ ]]; then
            mv ~/Desktop/Screenshots/"$file" ~/Desktop
        fi
    done
