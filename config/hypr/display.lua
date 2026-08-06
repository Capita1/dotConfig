-- gen by confToLua.py
-- Source: display.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- Env vars
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Monitors
hl.monitor({ output = "DP-1", mode = "1440x900@60", position = "1440x0", scale = "1" })
hl.monitor({ output = "HDMI-A-1", mode = "disabled", position = "0x0", scale = "1" })
hl.monitor({ output = "HDMI-A-1", mode = "addreserved", position = "5", scale = "5" })

-- General Config
hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
})
