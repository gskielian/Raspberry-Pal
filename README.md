Turing-Test
===========

Using google tts and stt to achieve a platform for Robotic interaction.


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

you will be given a "x" second window:

```bash
chmod +x say.sh
./say.sh 10
```

Then the simple script will parse the returned json for the most probably match from Google's Apis/


Credits:
--------

Thanks to [Oscar Liang](http://blog.oscarliang.net/raspberry-pi-voice-recognition-works-like-siri/)
for showing that this is possble!

However it seems like things are always changing so I'll try to keep this repo as fresh with google api 
current standards as possible.



