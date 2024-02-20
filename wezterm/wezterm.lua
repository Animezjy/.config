local wezterm = require("wezterm")
local config = {
	default_prog = {
		"/bin/zsh",
	},
	font_size = 18,
	font = wezterm.font("JetBrainsMonoNL Nerd Font", {
		weight = "Regular",
	}),
	color_scheme = "Catppuccin Macchiato",
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 0.8,
	macos_window_background_blur = 70,
	text_background_opacity = 0.8,
	adjust_window_size_when_changing_font_size = false,
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 5,
	},
	keys = {},
}
return config
