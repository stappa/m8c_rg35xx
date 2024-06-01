# M8 headless for rg35xx (OG) device

This setup is ispired by https://github.com/jasonporritt/rg351_m8c

Requires M8 headless on Teensy 4.1.
See: https://github.com/DirtyWave/M8Docs/blob/main/docs/M8HeadlessSetup.md

This setup should work on Anbernic RG35XX original hardware with Koriki 1.2 firmware.
It does not work on RG35XX Plus or H.
It does not work on other rg35xx firmwares like Garlic OS, muOS or stock OS.
It uses single SD card setup. Double SD cards setup is not tested, maybe will be added later.

## Thanks to lamaa for the m8c code that makes this thing work.
lamaa's repo is here: https://github.com/laamaa/m8c/

## Installation to RG35XX

* Download Koriki 1.0 firmware from [here](https://github.com/rg35xx-cfw/Koriki/releases/tag/koriki_rg35xx_v1.0).
* Unpack and flash SD image to SD card (e.g. with Balena Etcher).
* Remove TF2/EXT SD card if it is inserted.
* Insert SD card into TF1/INT slot and turn on power. Wait boot procedure to complete. Koriki simplemenu should apear.
* Turn off power by pressing volume up and power simultaneously.
* Remove card from device and insert it into PC. There should be two volumes created on SD card: "BATOCERA" and "SHARE".
* Download Koriki 1.2 update from [here](https://github.com/rg35xx-cfw/Koriki/releases/tag/koriki_rg35xx_v1.0.2_update) and unpack.
* On "BATOCERA" volume replace files from 1.2 update archive (read README in unpacked archive for details).
* On "SHARE" volume: create text file with name "customlauncher" (without any extension) in "system" folder.
  I.e. if you use MacOS it should be "/Volumes/SHARE/system/customlauncher".
  This file should contain single word "simplemenu".
  This file is needed to launch Koriki simplemenu instead of Batocera emulationstation.
* Download archive from [releases](todo) and unpack it.
* On "SHARE" volume: Create "roms/apps/m8c" folder. Copy files from release archive to "roms/apps/m8c/".
* On "SHARE" volume: Copy scripts/install_m8.sh file from this archive to "system/.simplemenu/apps" folder. Warning: ".simplemenu" is hidden folder, so if you don't see it, enable showing hidden files.
* Remove SD card from PC, insert it to RG35XX and boot. Koriki simplemenu should appear.
  If batocera emulationstation has booted instead of simplemenu, you did something wrong with "customlauncher" file.
* Go to "APPS&GAMES/TOOLS" in Koriki menu. Launch "install_m8".
* After script is done, go to "APPS&GAMES/PORTS" in Koriki menu. You should see "m8c" menu item.
  Connect your M8 headless and launch m8c. If all works right, you've done with setup, have fun!

## Buttons mapping

Buttons mapping are replicate LSDJ controls:
Select = [SHIFT]
Start = [PLAY]
B = [OPTION]
A = [EDIT]
Menu = [EXIT]. Press Select + Menu to exit m8c.

If you want to customize button mapping, edit [gamepad] section in config.ini file.

## Autostart

If you use this firmwate solely for M8 headless, you can push "select" button on m8c menu item and change "Autostart" to yes.
m8c will be launched automatically after boot.
