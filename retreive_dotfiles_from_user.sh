#!/bin/bash

#### Copy dotfiles
dotfiles=(".aliases" ".zshrc" ".vimrc" ".config/i3" ".config/rofi" ".gitconfig")

for dotfile in ${dotfiles[@]} ; do
	yes | cp -r $HOME/${dotfile} .
done

#### Copy crontab
crontab -l > crontab.txt
