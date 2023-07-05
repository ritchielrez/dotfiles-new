local wezterm = require 'wezterm';
return {
  font = wezterm.font("CaskaydiaCove Nerd Font"),
  font_size = 12,
  enable_tab_bar = false,
  color_scheme = "Catppuccin Mocha",
  color_scheme_dirs = {"~/.config/wezterm/colors/"},
  -- window_background_opacity = 0.8,
  window_close_confirmation = "NeverPrompt",
}

