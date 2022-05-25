#!/bin/bash

#### Copy dotfiles
dotfiles=(".bashrc" ".aliases" ".zshrc" ".vimrc" ".config/i3" ".gitconfig" )

for dotfile in ${dotfiles[@]} ; do
	yes | cp -r $HOME/${dotfile} .
done

#### Copy crontab
crontab -l > crontab.txt
