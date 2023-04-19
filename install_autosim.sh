#!/bin/bash
sudo apt update
sudo apt upgrade
sudo apt-get install wine --fix-missing
sudo apt-get install wine32 --fix-missing
mkdir ~/autosim
WINE_PREFIX=~/autosim WINEARCH=win32 wine regedit config.reg
wget $(cat link.txt) -O ~/autosim/as.zip
unzip ~/autosim/as.zip -d ~/autosim/as
WINE_PREFIX=~/autosim WINEARCH=win32 wine ~/autosim/as/as200v410na.exe
p ~/autosim/drive_c/Program\ Files/SMC/AUTOSIM-200V4/dzip.dll ~/autosim/drive_c/Program\ Files/SMC/AUTOSIM-200V4/DZIP.dll

cp ~/autosim/drive_c/Program\ Files/SMC/AUTOSIM-200V4/dunzip.dll ~/autosim/drive_c/Program\ Files/SMC/AUTOSIM-200V4/DUNZIP.dll
./launch.sh
