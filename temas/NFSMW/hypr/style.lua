hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 5,
		border_size = 1,
		col = {
			active_border = "rgba(ffdc51ff)",
			inactive_border = "rgba(fdab4080)",
		},
		allow_tearing = false,
		layout = "dwindle",
	},
	decoration = {
		blur = {
			enabled = true,
			size = 1,
			passes = 1,
			vibrancy = 1,
		},
		rounding = 0,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
	},
})
