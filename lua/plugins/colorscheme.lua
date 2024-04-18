return {
  {
    "rmehri01/onenord.nvim",
  },
  { "sainnhe/sonokai" },
  "projekt0n/github-nvim-theme",
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      local util = require("tokyonight.util")
      require("tokyonight").setup({
        style = "moon",
        light_style = "day",
        transparent = false,
        day_brightness = 0.2,
        on_colors = function(colors)
          colors.green = "#a6da95"
          colors.fg = "#b8c0e0"
          -- colors.dark3 = colors.red
          -- colors.bg_highlight = colors.red
          colors.terminal_black = "#6e738d" -- 未使用的变量 --util.darken(colors.terminal_black, 1)
          colors.orange = "#f5a97f" -- catppuccin macchiato peach
          colors.green1 = "#8bd5ca" -- catppuccin macchiato teal
        end,
        on_highlights = function(hl, c)
          -- hl.TroubleText = { fg = c.red }
        end,
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false,
      color_overrides = {
        all = {},
        latte = {},
        frappe = {
          yellow = "#dbc074",
        },
        macchiato = {},
        mocha = {},
      },
      highlight_overrides = {
        macchiato = function(macchiato)
          return {
            Visual = { bg = "#264F78", style = { "bold" } },
          }
        end,
      },
    },
  },
  {
    "maxmx03/dracula.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local dracula = require("dracula")

      dracula.setup({
        theme = "dracula-soft",
        transparent = false,
        on_colors = function(colors, color)
          return {
            base0 = "#cad3f5", --  白色
            base01 = "#7B7F8B",
            base02 = "#44475A",
            base03 = "#282A36",
            base04 = "#262626",
            green = "#a6da95",
            cyan = "#8aadf4", -- 蓝色
            yellow = "#eed49f", -- catppuccin yellow
            orange = "#f5a97f", -- catppuccin peach
          }
        end,
        on_highlights = function(colors, color)
          return {
            Visual = { bg = "#264F78", bold = true },
            IncSearch = { fg = "#181819", bg = colors.green },
            CurSearch = { fg = "#181819", bg = colors.green, bold = true },
            Search = { fg = "#181819", bg = colors.pink, bold = true },
          }
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
