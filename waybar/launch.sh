#!/bin/bash
killall waybar
cd ~/.config/waybar/themes/$1/
waybar -c jsonc -s css
