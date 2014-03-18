#!/bin/bash

# I used the following webcam and it works without need to add drivers
# Logitech HD Webcam C270, 720p Widescreen Video Calling and Recording

duration=$1

echo "Beginning Recording"
if [ -f file.wav ] ; then
rm file.wav
fi

if [ -f file.flac ] ; then
rm file.flac
fi


echo "removing previous files"
rm file.wav
rm file.flac

#arecord -f S16_LE -d $duration file.wav  -D "hw:0,0"  -r 16000 -c2

arecord -f S16_LE -d $duration file.wav -D "plughw:1,0" -r 16000 -c2
echo "ffmpeg processing"
ffmpeg -loglevel panic -y -i file.wav -ar 16000 -acodec flac file.flac  > /dev/null 2>&1

echo "Sending to Cloud"

curl -X POST \
--data-binary @file.flac \
--user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36' \
--header 'Content-Type: audio/x-flac; rate=16000;' \
'https://www.google.com/speech-api/v2/recognize?output=json&lang=en-us&key=AIzaSyCnl6MRydhw_5fLXIdASxkLJzcJh5iX0M4' > test.txt

#response=`cat test.txt | grep transcript | jq '.result[0].alternative[0].transcript'`
#espeak "you said $response" & 
