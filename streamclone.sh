#! /bin/bash
clear
echo Streamclone
echo "https://github.com/clientcrash/streamclone"
echo "streamclone.sh <src> <dst>"
echo Stream url : $1
echo Restream url $2
ffmpeg -i $(youtube-dl -g $1) -f flv $2 -b:v 4500k -b:a 128k -ar 44100 -acodec aac -vcodec libx264 -preset high -crf 28 -threads 4 

