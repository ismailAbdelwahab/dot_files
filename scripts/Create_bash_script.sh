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

################# Functions ##################
function checkArgumentLine(){
	if [ $# -ne 1 ]; then
		RED "   Error: No argument supplied."
		YELLOW "Proper usage : ${0} name_of_your_script"
		YELLOW "      or     : ${0} name_of_your_script.sh\n"
		exit 1
	fi
}
function computeFileName(){
	if [ ${1: -3} == ".sh" ]; then 
		FILE=${1}
	else 
		FILE=${1}.sh
	fi
}
function checkIfFileAlreadyExist(){
	if [ -f ${FILE} ]; then
    	RED "   Error: file [${FILE}] already exist."
     	YELLOW "No file created, try with another name please.\n"
		exit 2
	fi
}
function createFile(){ touch ${FILE}; chmod +x ${FILE}; }
function fillFileContent(){
	echo -e "#!/bin/bash 
################ Colors #######################
RED=\`tput bold && tput setaf 1\`
GREEN=\`tput bold && tput setaf 2\`
YELLOW=\`tput bold && tput setaf 3\`
BLUE=\`tput bold && tput setaf 4\`
NC=\`tput sgr0\`
function RED(){ echo -e "\${RED}\${1}\${NC}" ;}
function GREEN(){ echo -e "\${GREEN}\${1}\${NC}" ;}
function YELLOW(){  echo -e "\${YELLOW}\${1}\${NC}" ;}
function BLUE(){ echo -e "\${BLUE}$\{1}\${NC}" ;}
##############################################
################# Functions ##################

################## Script ####################\n" > ${FILE}
}

################## Script ####################
checkArgumentLine $*
computeFileName $*
checkIfFileAlreadyExist
createFile
fillFileContent
GREEN "\tFile created : ${FILE}\n"
