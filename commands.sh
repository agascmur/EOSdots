#!/bin/bash
## ## ## ## ## ## Debian

# First of all, Kindly run:
sudo apt update && sudo apt upgrade -y

# Run on ~ dir, from now on
sudo apt install kitty htop snapd

mkdir Git
git clone https://github.com/agascmur/EOSdots.git Git/EOSdots/

# Snapd installs
sudo ln -s /var/lib/snapd/snap /snap
# Add Snap to PATH
echo 'export PATH=$PATH:/snap/bin' >> ~/.bashrc
source ~/.bashrc

sudo snap install --edge youtube-music
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install androidsdk

snap list
# sudo snap remove $app

# Log out and in to see all the Apps in the Kde menu


# Ricing
# Kitty rice: kitty +kitten themes
