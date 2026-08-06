-- gen by confToLua.py
-- Source: Cyberpunk/hypr/style.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- General Config
hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		border_size = 1,
		col = {
			active_border = "rgba(3cdaf0ff)",
			inactive_border = "rgba(ee4f47ff)",
		},
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		blur = {
			enabled = true,
			size = 2,
			passes = 1,
			vibrancy = 1,
		},
		rounding = 0,
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
