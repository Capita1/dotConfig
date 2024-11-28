export GTK_THEME=Adwaita:dark
if pgrep -x "Hyprland" > /dev/null ; then
	echo "Hyprland aberto"
else
	Hyprland
fi