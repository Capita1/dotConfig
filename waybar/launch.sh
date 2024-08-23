#!/bin/bash
if [ -z "$1" ]; then
	killall wofi
	cat ~/.config/waybar/themes/themes \
	| wofi -d | sed 's/.*    \+//' | sh
else
	cd ~/.config/waybar/themes/$1/
	cp config ~/.config/wofi
	killall waybar
	waybar -c jsonc -s css
	killall wpaperd
	wpaperd -c wpaperd
fi


