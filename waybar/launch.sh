#!/bin/bash
if [ -z "$1" ]; then
	killall wofi
	cat ~/.config/waybar/themes/themes \
	| wofi -d -W 300 -t kitty -b -i | sed 's/.*    \+//' | sh
else
	cd ~/.config/waybar/themes/$1/
	killall waybar
	waybar -c jsonc -s css
	killall wpaperd
	wpaperd -c wallpaper
fi


