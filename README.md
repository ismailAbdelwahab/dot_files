# setup_new_linux_machine
**Bash script to install all i need on a new machine.**

--> uses : apt-get install

## Programs that will be installed:
Execute "setup_new_linux.sh": ( $./setup_new_linux_.sh )
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

####################################################################
#   Add some usefull script AND create symbolic links for them     #
####################################################################

 Consult the script/ folder:
        There you will find some scripts. You can remove the scripts
 that you do not want.

 Then execute "add_scripts_to_bin.sh":
        It will copy all scripts left in script/
 to your folder /home/your_user_name/Scripts.
 ( Note : ~/Script will be created if you do not have it yet )

        Then it will create a symbolic link in /bin/ , for each script copied.
  From now on you can use these script from anywhere on your terminal.

