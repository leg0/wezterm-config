local wezterm = require 'wezterm'

wezterm.on('open-uri', function(window, pane, uri)
  -- if link is file:// try to open it with nvim
  wezterm.log_info('url opened in pane ' .. pane:pane_id() .. ' : ' .. uri)
end)

local cfg = wezterm.config_builder()

cfg.default_prog = { 'wsl.exe', '--cd', '~', '-d', 'Debian' }
cfg.launch_menu = {
  {
    label = 'Far Manager',
    args = { 'C:/Users/lego/AppData/Local/Far Manager x64/Far.exe' }
  },
  {
    label = 'Debian / WSL',
    args = { 'wsl.exe', '--cd', '~', '-d', 'Debian' },
  },
}


cfg.font = wezterm.font('Cascadia Code NF', {weight='Light'})
cfg.color_scheme = 'Catppuccin Mocha'

-- cfg.enable_tab_bar = false,
cfg.window_decorations = "RESIZE"

cfg.keys = {
    { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
}



return cfg
