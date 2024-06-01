#!/bin/sh

cd /userdata/roms/apps/m8c

cp ./scripts/m8c.sh /userdata/system/.simplemenu/games/

mkdir -p /userdata/system/.simplemenu/games/Imgs
cp ./imgs/m8c.png /userdata/system/.simplemenu/games/Imgs/
cp ./scripts/m8c.sh /userdata/system/.simplemenu/games/
cp ./config/config.ini /userdata/system/.local/share/m8c/

mkdir -p /lib/modules/3.10.37/kernel/sound/core
mkdir -p /lib/modules/3.10.37/kernel/sound/usb
cp ./modules/modules.dep /lib/modules/3.10.37/
cp ./modules/snd-aloop.ko /lib/modules/3.10.37/kernel/sound/core/
cp ./modules/snd-hwdep.ko /lib/modules/3.10.37/kernel/sound/core/
cp ./modules/snd-usb-audio.ko /lib/modules/3.10.37/kernel/sound/usb/
cp ./modules/snd-usbmidi-lib.ko /lib/modules/3.10.37/kernel/sound/usb/

