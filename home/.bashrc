#!/bin/bash
alias nvim="kitten @ set-background-opacity 0.7 && /bin/nvim"
alias vim="nvim"
alias vi="/bin/nvim"

#se logado no tty1
if [[ "$(tty)" == "/dev/tty1" ]] ; then
	exec Hyprland &>/dev/null
fi
#se Hyprland estiver rodando
if pgrep -x "Hyprland" > /dev/null ; then
	user="$(whoami)"
	[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"	
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
fi
