Description
===========

Using google tts and stt to achieve a platform for Raspberry Pi to interact via voice with ordinary people.



```bash
.
├── README.md
├── Directions
│   ├── directions_responsder.sh
│   └── googlemaps_api_response.json
├── file.flac
├── file.wav
├── install.sh
├── jq-1.3
├── Raspberry_Pi
│   ├── raspi_listen.sh
│   ├── raspi_say.sh
│   ├── say.sh
│   └── useful_things.sh
└── Ubuntu
   ├── listen.sh
   ├── useful_things.sh
   └── say.sh
```

Installation:
-------------

I'm working on a version for Raspberry Pi, but the current version definitely works on Ubuntu.

Basically just run the install script with an:

```bash
chmod +x install.sh
sudo bash install.sh
```

Usage:
------

enter a number afterwards for the number of seconds per window:


#### Raspberry Pi

```bash
chmod +x ./raspi_listen.sh
./raspi_listen.sh 10
```



#### Ubuntu Linux 

```bash
chmod +x listen.sh
./listen.sh 10
```


Then the simple script will parse the returned json for the most probable match from Google's Speech-To-Text Apis.


Credits:
--------

Thanks to [Oscar Liang](http://blog.oscarliang.net/raspberry-pi-voice-recognition-works-like-siri/)
for showing that this is possble!

However it seems like things are always changing so I'll try to keep this repo as fresh with google api 
current standards as possible.



