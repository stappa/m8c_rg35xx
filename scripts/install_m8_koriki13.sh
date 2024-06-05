#!/bin/sh

mkdir -p /userdata/roms/apps
cp -r /boot/share/m8c /userdata/roms/apps/
cd /userdata/roms/apps/m8c

cp ./scripts/m8c.sh /userdata/system/.simplemenu/games/

mkdir -p /userdata/system/.simplemenu/games/Imgs
cp ./imgs/m8c.png /userdata/system/.simplemenu/games/Imgs/
cp ./scripts/m8c.sh /userdata/system/.simplemenu/games/
mkdir -p /userdata/system/.local/share/m8c
cp ./config/config.ini /userdata/system/.local/share/m8c/

