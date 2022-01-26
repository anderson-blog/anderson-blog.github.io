#!/bin/sh

find . -regextype posix-egrep -regex './[^t].*\.jpg' | 
    while IFS= read -r img; do
        cwebp -q 90 "$img" -o "${img%.*}.webp"
        rm "$img"
    done
