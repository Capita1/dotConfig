-- gen by confToLua.py
-- Source: rules.conf
-- Some values might need MANUAL check. PLEASE DO BACKUP BEFORE TESTING, PLEASEEEE.


-- Windowrules
hl.window_rule({
	name  = "rule-001",
	match = { class = "Audacious" },
	rounding = 0,
})

-- raw lines, pending review
-- [failes migration] workspace = special:audio, on-created-empty:pavucontrol
-- [failes migration] workspace = special:musica, on-created-empty:kitty rmpc
-- [failes migration] workspace = 5, on-created-empty:obsidian
-- [failes migration] workspace = 1,monitor:DP-1
-- [failes migration] workspace = 2,monitor:DP-1
-- [failes migration] workspace = 3,monitor:DP-1
-- [failes migration] workspace = 4,monitor:DP-1
-- [failes migration] workspace = 5,monitor:DP-1
-- [failes migration] workspace = 6,monitor:HDMI-A-1,border_size 0,gapsin:0,gapsout:0,rounding 0
-- [failes migration] workspace = 7,monitor:HDMI-A-1
-- [failes migration] workspace = 8,monitor:HDMI-A-1
-- [failes migration] workspace = 9,monitor:HDMI-A-1
-- [failes migration] workspace = 10,monitor:HDMI-A-1
-- [failes migration] layerrule = blur on,  match:namespace swaync-control-center
-- [failes migration] layerrule = ignore_alpha 0, match:namespace swaync-control-center
-- [failes migration] layerrule = blur on,  match:namespace swaync-notification-window
-- [failes migration] layerrule = ignore_alpha 0, match:namespace swaync-notification-window
-- [failes migration] layerrule = blur on, match:namespace waybar
-- [failes migration] layerrule = ignore_alpha 0, match:namespace waybar
-- [failes migration] layerrule = blur on, match:namespace wofi
-- [failes migration] layerrule = ignore_alpha 0, match:namespace wofi
