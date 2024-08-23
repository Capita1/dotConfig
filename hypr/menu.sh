#!/bin/bash
killall wofi
wofi -S $1 -W 300 -t kitty -b -i  
