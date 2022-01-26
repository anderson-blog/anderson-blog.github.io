#!/bin/bash

find . -regextype posix-egrep -regex './[^t].*\.webp' | 
    while IFS= read -r image; do
        size=(`identify -format '%w %h' $image`)
        if [ ${size[0]} -gt ${size[1]} ]; then
            if [ ${size[0]} -gt 1024 ]; then
                cwebp -resize 1024 0 -mt $image -o $image.2
            else
                continue
            fi
        else
            if [ ${size[1]} -gt 1024 ]; then
                cwebp -resize 0 1024 -mt $image -o $image.2
            else
                continue
            fi
        fi
        rm $image
        mv $image.2 $image
    done
