#!/bin/bash
alias neofetch="fastfetch"
export EDITOR=nvim
export VISUAL=nvim
#se logado no tty1
if [[ "$(tty)" == "/dev/tty1" ]] ; then
	sai=$(cat /tmp/sai)
	case "$sai" in
		1)#TTY
			echo "$(tty)"	
		;;
		2)#KDE
			exec /usr/lib/plasma-dbus-run-session-if-needed /usr/bin/startplasma-wayland
		;;
		3)#NIX
			cd ~/Projetos/Nix/ ; exec gamescope --backend wayland --fullscreen -r 60  -W 1440 -H 900 -- sh nix
		;;
		*)
			exec start-hyprland &>/dev/null
		;;
	esac
fi
#se Hyprland estiver rodando
if pgrep -x "Hyprland" > /dev/null || pgrep -x "plasmashell" > /dev/null ; then
	user="$(whoami)"
	export TERM=xterm-kitty   
	export QT_IM_MODULE=fcitx
	export XMODIFIERS=@im=fcitx
	alias hyexec="hyprctl dispatch exec"
	alias ssh="kitty +kitten ssh"	
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
