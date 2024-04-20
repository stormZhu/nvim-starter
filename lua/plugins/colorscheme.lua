return {
  {
    "rmehri01/onenord.nvim",
  },
  { "sainnhe/sonokai" },
  "projekt0n/github-nvim-theme",
  {
    "EdenEast/nightfox.nvim",
    config = function()
      require("nightfox").setup({
        options = {
          -- Compiled file's destination location
          -- compile_path = vim.fn.stdpath("cache") .. "/nightfox",
          -- compile_file_suffix = "_compiled", -- Compiled file suffix
          transparent = true, -- Disable setting background
          terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
          dim_inactive = false, -- Non focused panes set to alternative background
          module_default = true, -- Default enable value for modules
          colorblind = {
            enable = false, -- Enable colorblind support
            simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
            severity = {
              protan = 0, -- Severity [0,1] for protan (red)
              deutan = 0, -- Severity [0,1] for deutan (green)
              tritan = 0, -- Severity [0,1] for tritan (blue)
            },
          },
          styles = { -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
          },
          inverse = { -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
          },
          modules = { -- List of various plugins and additional options
          },
        },
        palettes = { -- Everything defined under `all` will be applied to each style.
          all = {},
          nightfox = {
            -- A specific style's value will be used over the `all`'s value
            red = "#ed8796",
            green = { base = "#a3be8c", bright = "#b1d196", dim = "#8aa872" },
            -- green = "#a6da95",
            -- yellow = "#91d7e3",
            white = "#b8c0e0",
            sel0 = "#264F78", -- Popup bg, visual selection bg
            -- fg0 = "#b8c0e0", -- Lighter fg
            fg1 = "#b8c0e0", -- Default fg
          },
          dayfox = {},
          nordfox = {
            white = "#b8c0e0",
            sel0 = "#264F78", -- Popup bg, visual selection bg
            -- fg0 = "#b8c0e0", -- Lighter fg
            fg1 = "#b8c0e0", -- Default fg
          },
        },
        specs = { -- As with palettes, the values defined under `all` will be applied to every style.
          all = {
            syntax = {
              builtin0 = "blue",
            },
            git = {},
          },
          nightfox = {
            -- syntax = {
            --   type = "#c6a0f6",
            -- },
          },
        },
        groups = {},
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      local util = require("tokyonight.util")
      require("tokyonight").setup({
        style = "storm",
        light_style = "day",
        transparent = false,
        day_brightness = 0.2,
        on_colors = function(colors)
          colors.fg = "#b8c0e0"
          colors.terminal_black = "#6e738d" -- 未使用的变量 --util.darken(colors.terminal_black, 1)

          -- colors.cyan = colors.red
          colors.blue1 = "#81b29a" -- catppuccin mauve
          -- colors.blue2 = colors.red
          -- colors.blue5 = colors.red

          colors.green = "#81b29a"
          colors.green2 = "#c6a0f6"
          -- colors.green1 = "#81b29a"
          colors.green1 = "#8bd5ca" -- catppuccin macchiato teal

          -- colors.dark3 = colors.red
          -- colors.bg_highlight = colors.red
          colors.orange = "#f5a97f" -- catppuccin macchiato peach
          -- colors.red = "#ff757f"
          -- colors.red1 = "#c53b53" --
          colors.purple = "#fca7ea"
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
      colorscheme = "nordfox",
    },
  },
}
