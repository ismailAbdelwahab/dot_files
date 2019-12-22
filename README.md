# setup_new_linux_machine
  **Bash script to install all i need on a new machine.**

## Table of Contents

* [List of programs](#programs-that-will-be-installed)
* [List of Scripts](#scripts-that-will-be-added)
    * [Information TO READ before installing](#information)
* [Installation](#installation)

# Programs that will be installed:
  - Git
  - Sublime text
  - Atom
  - Build-essential ( gcc, C code, lib, etc...)
  - For Python:
      - pip
      - requests
      - pwntools
  - Nmap
  - Curl
  - Wireshark
  - Bless (Hex editor)
  
# Scripts that will be added
  - Create_python3_script.sh 
>{Will create a python3 executable script, with header, main etc...}
  
  - Create_bash_script.sh
>{Will create a bash executable script, with colors function}
> usage: RED "your text"

# Information
## For programs
The script will update before installing any program.
      
      $ sudo apt update

## For Scripts
### A) Consult the *script/* folder: Choose which scripts you want to keep
 You can remove the scripts that you do not want, just by removing them from **scripts**.

### B) Copying scripts and Creation of sym links for them
 **add_scripts_to_bin.sh** will copy ***all scripts left in script/*** to your folder **/home/your_user_name/Scripts**.
 
 ( Note : **~/Script** will be created if you do not have it yet )

  Then the script will create a symbolic link in **/bin/** , for each script copied.
  
  From now on you can use these script from anywhere on your terminal.
  
## Installation
**For programmes** -- execute "setup_new_linux.sh":
       
    $ sudo ./setup_new_linux_.sh 
Note: This script uses ***apt-get install***

**For scripts** -- execute : "add_scripts_to_bin.sh"
  
    $ sudo ./add_scripts_to_bin.sh
