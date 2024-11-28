export GTK_THEME=Adwaita:dark
if pgrep -x "Hyprland" > /dev/null ; then
	echo "Hyprland aberto"
else
	Hyprland
fi
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

function reload_gtk_theme() {
  theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
  gsettings set org.gnome.desktop.interface gtk-theme ''
  sleep 1
  gsettings set org.gnome.desktop.interface gtk-theme $theme
}
