#!/bin/bash

RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
        echo -e ${RED}${1}${NC} 
}
function GREEN(){
        echo -e ${GREEN}${1}${NC}
}
function YELLOW(){
        echo -e ${YELLOW}${1}${NC}
}
function BLUE(){
        echo -e ${BLUE}${1}${NC}
}

# Testing if root...
if [ $UID -ne 0 ]
then
        RED "You must run this script as root!" && echo
        exit
fi

##################################################
# Defining constants :
INSTALLATION_FOLDER="/home/${SUDO_USER}/Script"
##################################################

##################################################
# Create ~/Script directory.
if [ -d ~/Script ]; then
	GREEN " Folder [${INSTALLATION_FOLDER}] found."
else
	YELLOW " Did not found [$INSTALLATION_FOLDER]."
	mkdir ${INSTALLATION_FOLDER}
	YELLOW " Folder [${INSTALLATION_FOLDER}] have been created."
fi	


##################################################
# Copy all script in ~/Script and create Link in /bin:
i=1
for script in scripts/*.sh; do
	cp ${script} ${INSTALLATION_FOLDER}
	BLUE "\t${i} - [${script: 8}\t] copied in: ~/Script"
 	if [ -f /bin/${script: 8} ]; then
		YELLOW "\tError : /bin/${script: 8} already exist."
		RED "\tNo link created for : /bin/${script: 8} ."
	else
		ln -s ${INSTALLATION_FOLDER}/${script: 8} /bin/${script: 8}
		GREEN "\tLink create for: ${script: 8}"
	fi
	((i++))
done

GREEN " Done."
