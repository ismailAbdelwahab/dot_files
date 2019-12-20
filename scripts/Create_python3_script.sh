#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){	
	echo "${RED}${1}${NC}" 
}
function GREEN(){
	echo "${GREEN}${1}${NC}"
}
function YELLOW(){
	echo "${YELLOW}${1}${NC}"
}
function BLUE(){
	echo "${BLUE}${1}${NC}"
}

################################################
# Check for argument existance:
if [ $# -eq 0 ]; then
    	RED "   Error: No argument supplied."
    	YELLOW "usage : ${0} name_of_your_file"
    	YELLOW "  or  : ${0} name_of_your_file.py"
	echo "" ; exit -1
fi

################################################
# Compute the name of the file as "something.py":
if [ ${1: -3} == ".py" ]; then
	FILE=${1}
else
	FILE=${1}.py
fi

################################################
# Check if file does not already exist:
if [ -f ${FILE} ]; then
    	RED "   Error: file [${FILE}] already exist."
     	YELLOW "No file created, try with another name please."
	echo "" ; exit -2
fi

touch ${FILE}
chmod +x ${FILE}

################################################
#Fill file with python requirements:
echo "#!/usr/bin/env python3" > ${FILE}
echo -e "\n
def main():
\tpass\n
if __name__ = '__main__':
\tmain()\n" >> ${FILE}

#Done.
GREEN "    File created : ${FILE}"
echo ""
