#!/bin/bash

# I used the following webcam and it works without need to add drivers
# Logitech HD Webcam C270, 720p Widescreen Video Calling and Recording


echo "Recording... Press Ctrl+C to Stop."
rm file.wav
rm file.flac
#arecord -D "plughw:1,0" -d4 -f dat -t wav -r 48000 -c 2 | sox - -b16 -r16k -c1 -t wav - | flac - -o file.flac

espeak "speak now"
arecord -f S16_LE -d 2 file.wav  -D "hw:0,0"  -r 16000 -c2
espeak "stop it"

ffmpeg -loglevel panic -y -i file.wav -ar 16000 -acodec flac file.flac  > /dev/null 2>&1
#arecord -d 2 -D "plughw:1,0" -q -f cd -t wav file.wav
#echo "processing 1"
#arecord -D "plughw:1,0" --duration=3 -f cd --file-type wav file.wav
#| ffmpeg -loglevel panic -y -i -ar 16000 -acodec flac file.flac  > /dev/null 2>&1
#flac --best -f file.wav


#wget --post-file='file.flac' \
#--user-agent='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.77 Safari/535.7' \
#--header='Content-Type: audio/x-flac; rate=16000;' \
#-O 'recognized.json' \
#'https://www.google.com/speech-api/v1/recognize?client=chromium&lang=ar-QA&maxresults=10'

echo "Processing..."
curl -X POST \
--data-binary @file.flac \
--user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.117 Safari/537.36' \
--header 'Content-Type: audio/x-flac; rate=16000;' \
'https://www.google.com/speech-api/v2/recognize?output=json&lang=en-us&key=AIzaSyCnl6MRydhw_5fLXIdASxkLJzcJh5iX0M4' > test.txt

cat test.txt


#curl -X POST  --data-binary @file.flac  --user-agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.77 Safari/535.7'  --header 'Content-Type: audio/x-flac; rate=16000;'  'https://www.google.com/speech-api/v1/recognize?client=chromium&lang=ar-QA&maxresults=10'
#
#
# wget -q -U "Mozilla/5.0" --post-file file.flac --header "Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=en-us&client=chromium" | cut -d\" -f12  >stt.txt
#
