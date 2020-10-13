#!/bin/bash
#Preventing screen sleep
setterm -blank 0 -powersave off

#While loop
while :
do

	#Date counting down to
	Date="Oct 31"

	#Path of video files
	Path="/home/thom/Hal/"

	#Date calculation
	Days=$(($(date -d "$Date" +%j) - $(date +%j)))

	#Text to be displayed
	Text="Spookdown = ${Days}days to go!"

	#Screen dimensions
	Dim="1024x600"

	#TextHight
	Hight=$(( ( RANDOM % 3 ) + 1 ))

	#Text overlay settings
	TxtSet="drawtext=fontfile=usr/share/fonts/cantarell/CantarellExtraBold.otf: \
	text ="$Text": fontcolor=white: fontsize=60: x=(w-text_w)/2: y=(h-text_h)/$Hight"


	#Video for loop
	for f in $Path*.mp4
		do sudo ffmpeg -re -i $f -vf "scale=$Dim,$TxtSet" -c:v rawvideo -pix_fmt bgra -f fbdev /dev/fb0

	done
done
