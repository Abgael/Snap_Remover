#! /bin/sh

#Stopping the Snapd services
sudo systemctl disable snapd.service
sudo systemctl disable snapd.socket
sudo systemctl disable snapd.seeded.service

#Remove existing Snaps
sudo snap remove --purge firefox
sudo snap remove --purge gnome-3-38-2004
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge bare
sudo snap remove --purge core20
sudo snap remove --purge snapd

#Remove cached data
sudo rm -rf /var/cache/snapd/

#Remove and purge the snapd package
sudo apt autoremove --purge snapd

#Remove any lingering snap directories
rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd
