#!/usr/bin/sh

music=$1
notify-send "Playing : \"$(basename "$music")\""
mpv -vo null "$music"

