#!/bin/bash

#Credits for this script go directly to Oscar Liang

say() { local IFS=+;/usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols "http://translate.google.com/translate_tts?tl=en&q=$*"; }

say $*

