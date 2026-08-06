-- gen by confToLua.py
-- Source: hyprland.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- Variables
menu = "/bin/menus"
terminal = "kitty"
explorer = "Thunar"
browser = "zen-browser"

hl.on("hyprland.start", function()
	hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1 & waybar & wpaperd -d & swaync & wl-paste --type text --watch cliphist store & wl-paste --type image --watch cliphist store")
	hl.exec_cmd("sleep 20 ; mpd-mpris & sleep 20 ; player=$(playerctl --list-all | grep mpd) ; sed -i "s|^player=.*|player=\"$player\"|" "$HOME/.config/dotConfig/scripts/musica"")
	hl.exec_cmd("hyprctl setcursor Manopla 24 & hyprsunset")
	hl.exec_cmd("mpc repeat on && mpc random on && mpc consume on")
	hl.exec_cmd("cp /home/gabriel/Imagens/Wallpapers/ARCH7.jpg /tmp/fundo.png ; hyprlock")
	hl.exec_cmd("export QT_STYLE_OVERRIDE=kvantum")
end)

-- General Config
hl.config({
	misc = {
		enable_anr_dialog = false,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})

-- Requires
require("lua.rules")
require("lua.style")
require("lua.binds")
require("lua.input")
require("lua.display")
