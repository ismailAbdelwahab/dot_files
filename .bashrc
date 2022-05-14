# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable aliases :
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Setup terminal display
PS1='[\u@\h \W]\$ '

# Use vim as my default editor :
export EDITOR=vim
