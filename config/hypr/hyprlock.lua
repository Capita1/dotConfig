-- gen by confToLua.py
-- Source: hyprlock.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- General Config
hl.config({
	general = {
		disable_loading_bar = "fase",
		no_fade_in = false,
		no_fade_out = false,
		hide_cursor = true,
		grace = 0,
	},
	background = {
		monitor = "",
		path = "/tmp/fundo.png",
		blur_passes = 3,
		contrast = 1,
		brightness = 0.7,
		vibrancy = 1,
		vibrancy_darkness = 0,
	},
	label = {
		monitor = "",
		text = "cmd[update:1000] echo "$(sh ~/.config/dotConfig/scripts/musica atual)"",
		color = "rgba(255,",
		font_size = 14,
		font_family = "Play",
		position = "0, 50",
		halign = "center",
		valign = "bottom",
	},
	input-field = {
		monitor = "",
		size = "250, 60",
		outline_thickness = 2,
		dots_size = 0.2,
		dots_spacing = 0.35,
		dots_center = true,
		outer_color = "rgba(255,255,255,0.2)",
		inner_color = "rgba(255,255,255,0.1)",
		font_color = "rgb(255,255,255)",
		fade_on_empty = false,
		rounding = -1,
		check_color = "rgb(204,",
		placeholder_text = "Senha",
		hide_input = false,
		position = "0, -100",
		halign = "center",
		valign = "center",
	},
})
