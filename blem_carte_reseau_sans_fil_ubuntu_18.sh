#!/bin/bash

#https://forum.ubuntuusers.de/topic/wlan-modul-nicht-aktieviert-unter-ubuntu-18-04/
apt update
sudo apt-get install --reinstall git dkms build-essential linux-headers-$(uname -r) -y
apt install git -y
git clone https://github.com/tomaspinho/rtl8821ce
cd rtl8821ce
chmod +x dkms-install.sh
chmod +x dkms-remove.sh
sudo ./dkms-install.sh
update-grub ; update-grub2
apt upgrade -y
init 0

# Ce script ne marche que sur ubuntu-18.04 --------------------------------------------------------------------------------------
# Ce Script est fait par : BERENGER BENAM ---------------------------------------------------------------------------------------- 
