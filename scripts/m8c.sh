#!/bin/sh

export SDL_GAMECONTROLLERCONFIG=$(grep "RG35XX" "${HOME}/.config/gamecontrollerdb.txt")

# TODO: should be in etc/modules.conf?
modprobe -a cdc-acm snd-hwdep snd-usbmidi-lib snd-usb-audio
cd /userdata/roms/apps/m8c
LD_LIBRARY_PATH=./lib ./m8c &> log.txt
