local wezterm = require 'wezterm'
return {
  default_prog = { 'wsl.exe', '--cd', '~', '-d', 'Debian' },

  font = wezterm.font('Cascadia Mono', {weight='Light'}),
  -- color_scheme = 'AdventureTime',
  color_scheme = 'Catppuccin Mocha',
}
