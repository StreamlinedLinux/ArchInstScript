#!/bin/bash 
echo "This will get the base packages for the Streamlined Linux system. Run as Super User/sudo"
ROOT_UID=0
if [ $UID != $ROOT_UID ]; then
    echo "You don't have sufficient privileges to run this script."
    exit 1
fi
#This will install the K desktop environment with sufficient drivers.
LIST_OF_APPS="xf86-video-fbdev plasma-meta chromium xorg-server xf86-video-intel	mesa-libgl	lib32-mesa-libgl sddm lollypop"
sudo pacman -S $LIST_OF_APPS
sudo pacman -R lollypop
sudo systemctl enable sddm.service
