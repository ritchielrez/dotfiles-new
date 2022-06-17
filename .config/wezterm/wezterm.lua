local wezterm = require 'wezterm';
return {
  font = wezterm.font("JetbrainsMono Nerd Font"),
  font_size = 13,
  enable_tab_bar = false,
  color_scheme = "Gruvbox Material Dark",
  color_scheme_dirs = {"~/.config/wezterm/colors/"},
  window_background_opacity = 0.98,
  window_close_confirmation = "NeverPrompt",
}

