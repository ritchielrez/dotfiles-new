local wezterm = require 'wezterm';
return {
  font = wezterm.font("Comic Mono"),
  font_size = 14,
  enable_tab_bar = false,
  color_scheme = "everforest",
  color_scheme_dirs = {"~/.config/wezterm/colors/"},
  -- window_background_opacity = 0.98,
  window_close_confirmation = "NeverPrompt",
}

