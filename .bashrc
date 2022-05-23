# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable aliases :
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Setup PS1
	# User
PS1="[\e[44m\u\e[m] - "		# User
PS1+="{\w} -"				# CWD
PS1+="[\A]"					# Time
PS1+="\n\$ "				# Newline and root print

# Use vim as my default editor :
export EDITOR=vim
