#!/bin/bash
if pgrep -x "Hyprland" > /dev/null ; then
	echo "Σ"
else
	Hyprland
fi