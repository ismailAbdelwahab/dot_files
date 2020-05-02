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

############ Defining constants # ################
INSTALLATION_FOLDER="/home/${SUDO_USER}/Script"

################ Functions #######################
function checkForSudoRights(){
	if [ $UID -ne 0 ]; then
		RED "You must run this script as root!"; exit 1
	fi
}
function generateScriptFolder(){
	if [ -d ~/Script ]; then
		GREEN " Folder [${INSTALLATION_FOLDER}] found."
	else
		YELLOW " Did not found [${NC}$INSTALLATION_FOLDER${YELLOW}]."
		mkdir ${INSTALLATION_FOLDER}
		GREEN " Folder [${NC}${INSTALLATION_FOLDER}${GREEN}] have been created."
	fi
}
function copyScriptsAndCreateLinks(){
	for script in scripts/*.sh; do
		cp ${script} ${INSTALLATION_FOLDER}
		script_name=${script: 8}
		BLUE "\t${i} - [${NC}${script_name}${BLUE}\t] copied in: ~/Script"
		if [ -f /bin/${script_name} ]; then
			YELLOW "\tError : [/bin/${script_name}] already exist."
			RED "\tNo link created for : ${script_name} ."
	    else
			ln -s ${INSTALLATION_FOLDER}/${script_name} /bin/${script_name}
			GREEN "\tLink sucessfully created."
	    fi
	    ((i++))
	done
}

################### Script ###################
checkForSudoRights
generateScriptFolder
copyScriptsAndCreateLinks
