# M8 headless for rg35xx (OG) device

This setup is ispired by https://github.com/jasonporritt/rg351_m8c

Requires M8 headless on Teensy 4.1.\
See: https://github.com/DirtyWave/M8Docs/blob/main/docs/M8HeadlessSetup.md

This setup should work on Anbernic RG35XX original hardware with Koriki 1.2 firmware.\
It does not work on RG35XX Plus or H.\
It does not work on other rg35xx firmwares like Garlic OS, muOS or stock OS.\
It uses a single SD card setup. Double SD cards setup not tested, maybe will be added later.

## Thanks to lamaa for the m8c code that makes this thing work.
lamaa's repo is here: https://github.com/laamaa/m8c/


## Installation to RG35XX with Koriki 1.2

* Download Koriki 1.0 firmware from [here](https://github.com/rg35xx-cfw/Koriki/releases/tag/koriki_rg35xx_v1.0).
* Unpack and flash the SD image to the SD card (e.g., with Balena Etcher).
* Remove TF2/EXT SD card if it is inserted.
* Insert the SD card into TF1/INT slot and turn on the power. Wait for the boot procedure to complete. Koriki simplemenu should apear.
* Turn off the power by pressing volume up and power simultaneously.
* Remove the SD card from device and insert it into the PC. There should be two volumes created on SD card: "BATOCERA" and "SHARE".
* Download Koriki 1.2 update from [here](https://github.com/rg35xx-cfw/Koriki/releases/tag/koriki_rg35xx_v1.0.2_update) and unpack it.
* On the "BATOCERA" volume: replace files with those from 1.2 update archive (read README in the unpacked archive for details).
* On the "SHARE" volume: create a text file with name "customlauncher" (without any extension) in the "system" folder.
  I.e. if you use MacOS it should be "/Volumes/SHARE/system/customlauncher".
  This file should contain single word "simplemenu".
  The file is needed to launch Koriki simplemenu instead of Batocera emulationstation.
* Download archive from [releases](https://github.com/stappa/m8c_rg35xx/releases/tag/v0.1.1) and unpack it.
* On the "SHARE" volume: Create "roms/apps/m8c" folder. Copy files from the release archive to "roms/apps/m8c/".
* On the "SHARE" volume: Copy scripts/install_m8_koriki12.sh file from release archive to "system/.simplemenu/apps" folder. Warning: ".simplemenu" is hidden folder, so if you don't see it, enable viewing hidden files.
* Remove SD card from PC, insert it to RG35XX and boot. Koriki simplemenu should appear.
  If batocera emulationstation has booted instead of simplemenu, you did something wrong with "customlauncher" file.
* Go to "APPS&GAMES/TOOLS" in Koriki menu. Launch "install_m8_koriki12".
* After the script is exited, go to "APPS&GAMES/PORTS" in Koriki menu. You should see "m8c" menu item.
  Connect your M8 headless and launch m8c. If all done right, m8 client should start, have fun!

## Installation with Koriki 1.3

  Koriki 1.3 solved some bugs fixed from Koriki 1.3, but have a new bug: "SHARE" partition does not mount on some systems (namely MacOS).
  This makes more difficult manage roms and other files in the system.
  Still, you can copy files to the "BATOCERA" partition, which then will be available in "/boot" path in the system. You can use Commander tool in Koriki to manage files.
  If you are ok with these quirks, here is instructions:

* Download Koriki 1.3 firmware from [here](https://github.com/rg35xx-cfw/Koriki/releases/tag/koriki_batocera_rg35xx_20240105).
* Unpack and flash the SD image to the SD card (e.g., with Balena Etcher).
* Remove TF2/EXT SD card if it is inserted.
* Insert the SD card into TF1/INT slot and turn on the power. Wait for the boot procedure to complete. Koriki simplemenu should apear.
* Turn off the power by pressing volume up and power simultaneously.
* Remove the SD card from device and insert it into the PC. There should be "BATOCERA" volume.
* On the "BATOCERA" volume: Create "share/m8c" folder. Copy files from the release archive to "share/m8c" folder.
* Insert SD card into RG35XX and boot. Koriki simplemenu should appear.
* Go to "APPS&GAMES/TOOLS" in Koriki menu. Launch "Commander".
* With commander, go to /boot/share/m8c/scripts directory.
* Choose "install_m8_koriki13.sh" and execute it.
* After the script is exited, go to "APPS&GAMES/PORTS" in Koriki menu. You should see "m8c" menu item.

## Buttons mapping

Buttons mapping are replicate LSDJ controls:\
Select = [SHIFT]\
Start = [PLAY]\
B = [OPTION]\
A = [EDIT]\
Menu = [EXIT]. Press Select + Menu to exit m8c.

If you want to customize button mapping, edit [gamepad] section in config.ini file.

## Autostart

If you use this firmwate solely for M8 headless, you can push "select" button on m8c menu item and change "Autostart" to yes.
m8c will be launched automatically after boot.
