-- lua/plugins/colorscheme.lua
--
-- tokyonight.nvim with the exact palette from i3/dunst/betterlockscreen
-- (see assets/palette.md in the i3 config repo), so nvim looks like a
-- natural extension of the rest of the desktop instead of a random
-- pre-made theme.
--
-- Diagnostics map 1:1 onto the same semantics already used elsewhere
-- in the dotfiles: red = danger/error, yellow = warning, blue = info,
-- green = success/hint.

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },
      on_colors = function(colors)
        -- Base surfaces
        colors.bg = "#1B1C1E"
        colors.bg_dark = "#1B1C1E"
        colors.bg_float = "#232427"
        colors.bg_highlight = "#2A2B2E"
        colors.bg_popup = "#232427"
        colors.bg_sidebar = "#1B1C1E"
        colors.bg_statusline = "#232427"
        colors.bg_visual = "#2A2B2E"
        colors.bg_search = "#2A2B2E"

        -- Text
        colors.fg = "#E8EAED"
        colors.fg_dark = "#9AA0A6"
        colors.fg_float = "#E8EAED"
        colors.fg_sidebar = "#9AA0A6"
        colors.fg_gutter = "#35363A"
        colors.comment = "#9AA0A6"

        -- Chrome
        colors.border = "#35363A"
        colors.border_highlight = "#8AB4F8"

        -- Accents (reused across hues since the palette only defines four)
        colors.blue = "#8AB4F8"
        colors.blue0 = "#8AB4F8"
        colors.blue1 = "#8AB4F8"
        colors.blue2 = "#8AB4F8"
        colors.blue5 = "#8AB4F8"
        colors.blue6 = "#8AB4F8"
        colors.blue7 = "#8AB4F8"
        colors.cyan = "#8AB4F8"
        colors.magenta = "#8AB4F8"
        colors.magenta2 = "#8AB4F8"
        colors.purple = "#8AB4F8"

        colors.green = "#81C995"
        colors.green1 = "#81C995"
        colors.green2 = "#81C995"
        colors.teal = "#81C995"

        colors.red = "#F28B82"
        colors.red1 = "#F28B82"

        colors.orange = "#FDD663"
        colors.yellow = "#FDD663"

        -- Diagnostics: same semantics as dunst/betterlockscreen
        colors.error = "#F28B82"
        colors.warning = "#FDD663"
        colors.info = "#8AB4F8"
        colors.hint = "#81C995"

        -- Git signs
        colors.git = {
          add = "#81C995",
          change = "#FDD663",
          delete = "#F28B82",
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}