#!/bin/bash
sh ~/.profile

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"	

user="$(whoami)"

## synth-shell-prompt.sh
if [ -f /home/$user/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/$user/.config/synth-shell/synth-shell-prompt.sh
fi

## better-ls
if [ -f /home/$user/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/$user/.config/synth-shell/better-ls.sh
fi

## alias
if [ -f /home/$user/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/$user/.config/synth-shell/alias.sh
fi

## better-history
if [ -f /home/$user/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/$user/.config/synth-shell/better-history.sh
fi
