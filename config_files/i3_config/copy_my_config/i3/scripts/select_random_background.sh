#!/bin/sh
# This script output a FULL PATH of a random picture in 
# /home/<your_user_name>/.config/i3/background

background_folder="$HOME/.config/i3/backgrounds"
echo $background_folder/$( ls $background_folder | shuf -n 1 )
