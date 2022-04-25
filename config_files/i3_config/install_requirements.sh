#!/bin/sh

# Install i3 and i3-gaps:
sudo add-apt-repository ppa:regolith-linux/release
sudo apt update -y
sudo apt install i3 i3-gaps -y

# Install compton (Terminal transparency)
sudo apt install compton -y

# Install feh (Change wallpaper)
sudo apt install feh -y

# Install lxappearance (Change font used by the system)
sudo apt install lxappearance -y
