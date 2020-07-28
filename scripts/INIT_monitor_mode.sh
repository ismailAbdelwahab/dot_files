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
################ Functions ############################
function check_UID(){
	if [ $UID -ne 0 ]; then
		RED "You must run this script as root!"; exit 1
	fi
}

################# Script ##############################
check_UID
BLUE "Please give the name of the interface to put in monitor mode:"
BLUE "Interface's name: \c"
#read interface # will be used to automate the process with other interfaces
interface=wlp6s0b1
YELLOW "Your interface is called: [$GREEN$interface$YELLOW]"

YELLOW "Stopping network-manager...\c"
service network-manager stop && GREEN "Done."

BLUE "[1]Shutting down the interface: \c"
ifconfig $interface down && GREEN "Done."

BLUE "[2]Switching to monitor mode: \c"
iwconfig $interface mode monitor && GREEN "Done."

BLUE "[3]Bringing interface up again: \c"
ifconfig $interface up && GREEN "Done."

YELLOW "Starting network-manager...\c"
service network-manager start && GREEN "Done."
