#!/bin/bash
sudo dkpg --add-architecture i386
sudo apt update
sudo apt upgrade
sudo apt-get install wine --fix-missing -y
sudo apt-get install winetricks --fix-missing -y
sudo apt-get install winbind--fix-missing -y
 winetricks dotnet35 vcrun2008 corefonts
sudo apt-get install wine32 --fix-missing -y
chmod +x launch.sh
mkdir ~/autosim
WINE_PREFIX=~/autosim WINEARCH=win32 wine regedit settings.reg
wget $(cat link.txt) -O ~/autosim/as.zip
unzip ~/autosim/as.zip -d ~/autosim/as
WINE_PREFIX=~/autosim WINEARCH=win32 wine ~/autosim/as/as200v410na.exe
cp ~/autosim/drive_c/Program\ Files\ /SMC/AUTOSIM-200V4/dzip.dll ~/autosim/drive_c/Program\ Files\ /SMC/AUTOSIM-200V4/DZIP.dll

cp ~/autosim/drive_c/Program\ Files\ /SMC/AUTOSIM-200V4/dunzip.dll ~/autosim/drive_c/Program\ Files\ /SMC/AUTOSIM-200V4/DUNZIP.dll
./launch.sh
