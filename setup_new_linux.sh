#!/bin/bash
################# Colors ##############################
RED_COLOR=`tput bold && tput setaf 1`
GREEN_COLOR=`tput bold && tput setaf 2`
YELLOW_COLOR=`tput bold && tput setaf 3`
BLUE_COLOR=`tput bold && tput setaf 4`
NC=`tput sgr0`
function RED(){ echo -en ${RED_COLOR}${1}${NC} ;}
function GREEN(){ echo -en ${GREEN_COLOR}${1}${NC} ;}
function YELLOW(){ echo -en ${YELLOW_COLOR}${1}${NC} ;}
function BLUE(){ echo -en ${BLUE_COLOR}${1}${NC} ;}
############ Testing if you have root priviledges ####
function checkRootPriviledge(){
	if [ $UID -ne 0 ]
	then
		RED "You must run this script as root!" && echo && exit 1
	fi
}
#######################################################
################### Setup functions ###################
function setupForSublimeText(){
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    sudo apt install -y apt-transport-https
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
}

function setupForSpotify(){
    curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
}

function setupForObs(){
	sudo add-apt-repository ppa:obsproject/obs-studio
}
############## DPKG Install functions #################
function dpkgInstallDiscord(){
	BLUE "\tInstalling discord ...\n"
	wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
    sudo dpkg -i discord.deb
    rm discord.deb
}
################## Install functions ##################
# $1 => String name of the package to be installed
function installPackage(){
	BLUE "\tInstalling $1 ...\n"
	sudo apt install -y $1
}
function installPipPackage(){
	BLUE "\tPip install $1 ...\n"
	sudo pip3 install $1
}
################## Update #############################
function updateAndUpgradeRepos(){
	BLUE "\tUpdating repos ..."
	sudo apt update -y
	BLUE "\tUpgrading ..."
	sudo apt upgrade -y
	BLUE "\tApt autoremove ..."
	sudo apt autoremove -y
	BLUE "\tApt Autoclean ..."
	sudo apt autoclean -y
}

function runAllNeededSetups(){
	setupForSublimeText
	setupForSpotify
	setupForObs
	sudo apt update -y
}
#######################################################
# Make sure that the script runs with root priviledges :
checkRootPriviledge

# Update and upgrade syst :
updateAndUpgradeRepos

# Run needed setups :
runAllNeededSetups

############## Utilities :
installPackage "build-essential"
installPackage "git"
installPackage "macchanger"
installPackage "tldr"
installPackage "tree"

############## Tex/Hex/LaTeX editors :
installPackage "vim"
installPackage "sublime-text"
#installPackage "bless"
#installPackage "gummi"

############## Python related :
installPackage "python3-pip"
installPipPackage "numpy"
installPipPackage "matplotlib"
installPipPackage "requests"
installPipPackage "pwntools"

############## Networking :
installPackage "curl"
installPackage "nmap"
installPackage "wireshark"
installPackage "scapy"

############## Cybersec tools :
installPackage "john"
installPackage "hashcat"

############## Other softwares :
installPackage "spotify-client"
#dpkgInstallDiscord
installPackage "ffmpeg"
installPackage "obs-studio"
installPackage "audacity"
installPackage "vlc"
