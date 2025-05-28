local wezterm = require 'wezterm'

return {
	font = wezterm.font_with_fallback {
		"JetBrainsMono Nerd Font", -- Replace with your installed Nerd Font
		"Noto Color Emoji", -- Ensures emoji support
	},
	font_size = 12.0,      -- Adjust as needed
}
