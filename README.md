Description
===========

Using google tts, JSON parsing with jq, and espeak (or google stt) to achieve a platform for Raspberry Pi to interact via voice with people -- no recognition-training required.


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
chmod +x ./PAL.sh
./PAL.sh 5
```

loops every 5 seconds (we are working on a less choppy version), but it works!



### Components

For ease of hacking, I separated the components of the setup into different scripts, below demonstrates the simple usage of the relevant `listen` script:

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



