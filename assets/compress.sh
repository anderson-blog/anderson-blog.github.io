#!/bin/sh

find . -name '*.jpg' | grep -v '/tmp/' | 
    while IFS= read -r img; do
	if [ $(du -b "$img" | cut -f1) -gt 150000 ]; then
		echo " >> warning $img size is $(du -h "$img"), compressing..."
		convert "$img" -resize 1024x "$img"
		jpegoptim --size=140k "$img" --overwrite 
		echo " .. $img size is now $(du -h "$img"), done"
	fi
    done
