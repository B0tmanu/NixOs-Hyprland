hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "4", monitor = "HDMI-A-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = "HDMI-A-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1", default = true, persistent = true })

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
    name  = "float-file-pickers",
    match = { title = "(Open File|Pick game to add|Save File|Save As|Choose Files|Open Folder)" },
    float = true,
})

hl.window_rule({
  name = "discord",
  match = {
    class = "discord"
  },
   workspace = "6 silent",
   opacity = "1.0 override",
})

hl.window_rule({
  name = "chromium",
  match = {
    class = "chromium"
  },
   opacity = "1.0 override",
})

hl.window_rule({
  name = "brave",
  match = {
    class = "brave-browser"
  },
   opacity = "1.0 override",
})

hl.window_rule({
  name = "steam",
  match = {
    class = "steam"
  },
   float = true,
})

hl.window_rule({
  name = "localsend",
  match = {
    class = "localsend"
  },
   float = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.layer_rule({
	name = "notification-animations",
	match = { namespace = "swaync-control-center" },
	animation = "slide right",

})

hl.layer_rule({
	name = "rofi-animations",
	match = { namespace = "rofi" },
	animation = "popin",
})

hl.layer_rule({
	name = "wlogout",
	match = { namespace = "wlogout" },
	blur = true,
})

hl.layer_rule ({
	name = "swaync",
	match = { namespace = "swaync" },
	blur = true,
})

hl.window_rule({
    name = "steam-apps-ws3",
    match = {
        class = "^steam_app_.*$",
    },
	workspace = "3"
})

hl.window_rule({
    name = "gamescope-ws3",
    match = {
        class = "^gamescope$",
    },
	workspace = "3"
})

hl.window_rule({
    name = "alacritty",
    match = {
        class = "Alacritty",
    },
	float = true,
	size = {230, 560},
})

hl.window_rule ({
	name = "center",
	match = {
		class = "^(?!steam).*$"
	},
	center = true,
	size = {1089, 890}
})

