local wezterm = require 'wezterm'

return {
  window_close_confirmation = 'NeverPrompt',
  -- wezterm.open_with 'http://example.com',
  -- font = wezterm.font 'Roboto Mono  ',
  -- font = wezterm.font('OpenDyslexicMono Nerd Font', { weight = 'Bold', italic = false }),
  -- font = wezterm.font('OpenDyslexicAlta Nerd Font', { weight = 'Bold', italic = false }),
  font = wezterm.font('FiraCode ', { weight = 'Bold', italic = false }),
  front_end = "OpenGL",
  warn_about_missing_glyphs = false,
  font_size = 10.5,
  line_height = 1.0,
  dpi = 96.0,
  window_background_opacity = 0.65,
  text_background_opacity = 1.0,
  automatically_reload_config = true,
  inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
  -- color_scheme = 'tokyonight',
  default_prog = { '/usr/bin/fish' },
  window_frame = {
  font_size = 10.0,
    
  },
  use_fancy_tab_bar = true,
  tab_bar_at_bottom = false,
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  show_tab_index_in_tab_bar = false,
  window_padding ={
  	left = 15,
	right = 15,
	top = 15,
	bottom = 15,

  },

  -- window_frame = {
  --   font = wezterm.font { family = 'Roboto', weight = 'Bold' },
  --   font_size = 12.0,
  --   inactive_titlebar_bg = '#1f2335',
  --   active_titlebar_bg = '#1f2335',
  --   inactive_titlebar_fg = '#cccccc',
  --   active_titlebar_fg = '#ffffff',
  --   inactive_titlebar_border_bottom = '#1f2335',
  --   active_titlebar_border_bottom = '#1f2335',
  --   button_fg = '#ee8617',
  --   -- button_fg = '#9ba5d3',
  --   button_bg = '#1f2335',
  --   button_hover_fg = '#ffffff',
  --   button_hover_bg = '#3b3052',
  --   },


    colors = {
      -- The default text color
      foreground = '#9ba5d3',
      -- The default background color
      background = '#1f2335',

      -- Overrides the cell background color when the current cell is occupied by the
      -- cursor and the cursor style is set to Block
      cursor_bg = '#FF006E',
      -- Overrides the text color when the current cell is occupied by the cursor
      cursor_fg = 'black',
      -- Specifies the border color of the cursor when the cursor style is set to Block,
      -- or the color of the vertical or horizontal bar when the cursor style is set to
      -- Bar or Underline.
      cursor_border = '#ffffff',
       -- cursor_border = '#52ad70',

      -- the foreground color of selected text
      selection_fg = '#3b3b3b',
      -- the background color of selected text
      selection_bg = '#ff0f00',

      -- The color of the scrollbar "thumb"; the portion that represents the current viewport
      scrollbar_thumb = '#222222',

      -- The color of the split lines between panes
      split = '#444444',
},
  --     ansi = {
  --       'black',
  --       'maroon',
  --       'green',
  --       'olive',
  --       'navy',
  --       'purple',
  --       'teal',
  --       'silver',
  --     },
  --     brights = {
  --       'grey',
  --       'red',
  --       'lime',
  --       'yellow',
  --       'blue',
  --       'fuchsia',
  --       'aqua',
  --       'white',
  --     },

  --     -- Arbitrary colors of the palette in the range from 16 to 255
  --     indexed = { [136] = '#af8700' },

  --     -- Since: 20220319-142410-0fcdea07
  --     -- When the IME, a dead key or a leader key are being processed and are effectively
  --     -- holding input pending the result of input composition, change the cursor
  --     -- to this color to give a visual cue about the compose state.
  --     compose_cursor = 'orange',

  --     -- Colors for copy_mode and quick_select
  --     -- available since: 20220807-113146-c2fee766
  --     -- In copy_mode, the color of the active text is:
  --     -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
  --     -- 2. selection_* otherwise
  --     copy_mode_active_highlight_bg = { Color = '#000000' },
  --     -- use `AnsiColor` to specify one of the ansi color palette values
  --     -- (index 0-15) using one of the names "Black", "Maroon", "Green",
  --     --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
  --     -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
  --     copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
  --     copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
  --     copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

  --     quick_select_label_bg = { Color = 'peru' },
  --     quick_select_label_fg = { Color = '#ffffff' },
  --     quick_select_match_bg = { AnsiColor = 'Navy' },
  --     quick_select_match_fg = { Color = '#ffffff' },

  --   },

  --   wezterm.on('update-right-status', function(window, pane)
  --     -- "Wed Mar 3 08:14"
  --     local date = wezterm.strftime '%a %b %-d %H:%M '

  --     local bat = ''
  --     for _, b in ipairs(wezterm.battery_info()) do
  --       bat = '🔋 ' .. string.format('%.0f%%', b.state_of_charge * 100)
  --     end

  --     window:set_right_status(wezterm.format {
  --       { Text = bat .. '   ' .. date },
  --     })
  --   end)
  }
