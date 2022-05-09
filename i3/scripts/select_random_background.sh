#!/bin/sh
# This script output a FULL PATH of a random picture in 
# /home/<your_user_name>/.config/i3/background

background_folder="$HOME/.config/i3/backgrounds"
echo $( ls $background_folder/*.png $background_folder/*.jpg 2>/dev/null | shuf -n 1 )
