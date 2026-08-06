-- gen by confToLua.py
-- Source: Aero/hypr/style.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- General Config
hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 5,
		border_size = 1,
		col = {
			active_border = "rgba(ffffff4d)",
			inactive_border = "rgba(0000004d)",
		},
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		blur = {
			enabled = true,
			size = 7,
			passes = 2,
			vibrancy = 1,
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
