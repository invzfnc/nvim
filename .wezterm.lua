-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

config.window_background_opacity = 0.80
--config.color_scheme = 'Tokyo Night'
config.color_scheme = 'Rouge 2'

-- Finally, return the configuration to wezterm:
return config

