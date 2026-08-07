hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		border_size = 1,
		col = {
			active_border = "rgba(ffffffff)",
			inactive_border = "rgba(000000ff)",
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
