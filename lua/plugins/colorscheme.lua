return {
  {
    "tanvirtin/monokai.nvim",
    -- config = function()
    --   local palette = require("monokai").pro
    --   palette.white = "#C3C0C0"
    --   palette.grey = "#72696A"
    --   palette.black = "#000000"
    --   palette.pink = "#D06A86"
    --   palette.green = "#77C269"
    --   palette.aqua = "#6CB5CC"
    --   palette.yellow = "#E4C15A"
    --   palette.orange = "#FC9867"
    --   palette.purple = "#AB9DF2"
    --   palette.red = "#D15454"
    --   require("monokai").setup({
    --     palette = palette,
    --     custom_hlgroups = {
    --       Visual = {
    --         bg = palette.base5,
    --       },
    --       VisualNOS = {
    --         bg = palette.base5,
    --       },
    --       CursorLine = {
    --         bg = palette.base4,
    --       },
    --       Comment = {
    --         fg = palette.base7,
    --         style = "italic",
    --       },
    --     },
    --   })
    -- end,
  },
  { "mhartington/oceanic-next" },
  { "lewis6991/github_dark.nvim" },
  {
    "neanias/everforest-nvim",
    config = function()
      require("everforest").setup({
        on_highlights = function(hl, palette)
          hl.CurrentWord = { fg = palette.none, bg = palette.none, bold = true, underline = true }
        end,
      })
    end,
  },
  "morhetz/gruvbox",
  "junegunn/seoul256.vim",
  "projekt0n/github-nvim-theme",
  "nlknguyen/papercolor-theme",
  "chiendo97/intellij.vim",
  "savq/melange-nvim",
  {
    "Mofiqul/vscode.nvim",
    -- priority = 1000,
    config = function()
      local c = require("vscode.colors").get_colors()
      require("vscode").setup({
        -- transparent = true,
        -- Override colors (see ./lua/vscode/colors.lua)
        color_overrides = {
          vscLightBlue = "#8EC2DD",
          vscYellow = "#CEBA79",
        },
        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
          CursorLine = { bg = "#162E44" },
        },
      })
      -- require("vscode").load()
    end,
  },
  {
    "catppuccin/nvim",
    opt = {
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "frappe",
      },
      treesitter_context = false,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
