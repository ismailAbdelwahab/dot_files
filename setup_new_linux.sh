#!/bin/bash
################# Colors ##############################
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`
function RED(){ echo -e ${RED}${1}${NC} ;}
function GREEN(){ echo -e ${GREEN}${1}${NC} ;}
function YELLOW(){ echo -e ${YELLOW}${1}${NC} ;}
function BLUE(){ echo -e ${BLUE}${1}${NC} ;}

############ Testing if you have root priviledges ############
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echoWireshark
	exit 1
fi
##############################################################
################## Update #######################
BLUE "Updating repositories..."
sudo apt update
#################################################

BLUE "Installing build-essential..."
sudo apt-get install build-essential 

BLUE "Installing git..."
sudo apt install -y git

################## Text/Hex editors #################
# Vim, Sublime Text, Atom // Bless
YELLOW " Text and Hex Editors:"
BLUE "\tInstalling Vim"
sudo apt-get install vim

#BLUE "\tInstalling Sublime Text..."
## According to https://www.sublimetext.com/docs/3/linux_repositories.html-
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#sudo apt-get install -y apt-transport-https
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo apt-get update
#sudo apt-get install -y sublime-text

BLUE "\tInstalling Atom..."
wget "https://atom.io/download/deb" -O atom.deb
dpkg -i atom.deb
rm atom.deb

BLUE "Installing Bless..."
sudo apt-get install -y bless
##################################################
############### Python related  ##################
# pip, requests, pwntools
YELLOW " Pyton related instalations:"
BLUE "\tInstalling pip..."
sudo apt-get install -y python-pip

BLUE "\tInstalling python-requests..."
pip install requests

BLUE "\tInstalling Python pwntools..."
sudo pip install pwntools
##################################################
################ Networking ######################
# Curl, nmap, wireshark
YELLOW " Networking tools:"
BLUE "\tInstalling curl..."
sudo apt-get install -y curl

BLUE "\tInstalling nmap..."
sudo apt-get install -y nmap

BLUE "\tInstalling Wireshark..."
sudo apt-get install -y wireshark
##################################################
