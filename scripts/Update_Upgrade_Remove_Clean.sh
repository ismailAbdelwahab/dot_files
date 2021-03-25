#!/bin/bash 
################ Colors #######################
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`
function RED(){ echo -e ${RED}${1}${NC} ;}
function GREEN(){ echo -e ${GREEN}${1}${NC} ;}
function YELLOW(){  echo -e ${YELLOW}${1}${NC} ;}
function BLUE(){ echo -e ${BLUE}${1}${NC} ;}
##############################################
################# Functions ##################
function check_UID(){
	if [ $UID -ne 0 ]; then
		RED "You must run this script as root!"; exit 1
	fi
}
function update(){
	BLUE "Updating ..."
	sudo apt -y update
}
function upgrade(){
	BLUE "Upgrading ..."
	sudo apt -y upgrade
}
function autoremove(){
	BLUE "Autoremove ..."
	sudo apt -y autoremove
}
function autoclean(){
	BLUE "Autoclen ..."
	sudo apt -y autoclean
}
################# Script #####################
check_UID

upgrade
upgrade
autoremove
autoclean
