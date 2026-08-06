-- gen by confToLua.py
-- Source: style.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- General Config
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 5,
		border_size = 1,
		col = {
			active_border = "rgba(afafaf66)",
			inactive_border = "rgba(00000066)",
		},
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		blur = {
			enabled = true,
			size = 10,
			passes = 2,
			vibrancy = 0,
		},
		shadow = {
			enabled = true,
			range = 100,
			render_power = 2,
			color = "rgba(010101c3)",
			offset = "0 0",
			scale = 0.9,
		},
		rounding = 20,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
	},
	animations = {
		enabled = true,
		bezier = "myBezier, 0.05, 0.9, 0.1, 1.05",
		animation = "workspaces, 1, 6, default",
	},
	master = {
		new_status = "master",
	},
})
