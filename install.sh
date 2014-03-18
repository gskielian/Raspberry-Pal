#!/bin/bash

# I used the following webcam and it works without need to add drivers
# Logitech HD Webcam C270, 720p Widescreen Video Calling and Recording

sudo apt-get install -y ffmpeg
sudo apt-get install -y mplayer
sudo apt-get install -y flac
sudo apt-get install -y jq # like sed for json
#wget http://stedolan.github.io/jq/download/source/jq-1.3.tar.gz
#tar -zxvf jq-1.3.tar.gz
cd jq-1.3
./configure && make && sudo make install
