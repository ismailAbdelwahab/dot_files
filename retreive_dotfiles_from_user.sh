#!/bin/bash

#### Copy dotfiles
dotfiles=("$HOME/.bashrc" "$HOME/.bash_aliases" "$HOME/.vimrc" "$HOME/.config/i3")

for dotfile in ${dotfiles[@]} ; do
	yes | cp -r ${dotfile} .
done

#### Copy crontab
crontab -l > crontab.txt
