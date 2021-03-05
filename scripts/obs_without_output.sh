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
# $1 Must be a pid.
function showPID(){
	GREEN "\tPID : $1."
}

function launchObsWithoutOutput(){
	YELLOW "Launching Obs ...\c"
	obs 1>/dev/null 2>&1 &
	showPID $!
}

################## Script ####################
launchObsWithoutOutput
