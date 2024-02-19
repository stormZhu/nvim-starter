return {
  {
    "tanvirtin/monokai.nvim",
    lazy = true,
    config = function()
      local palette = require("monokai").pro
      palette.white = "#C3C0C0"
      palette.grey = "#72696A"
      palette.black = "#000000"
      palette.pink = "#D06A86"
      palette.green = "#77C269"
      palette.aqua = "#6CB5CC"
      palette.yellow = "#E4C15A"
      palette.orange = "#FC9867"
      palette.purple = "#AB9DF2"
      palette.red = "#D15454"
      require("monokai").setup({
        palette = palette,
        custom_hlgroups = {
          Visual = {
            bg = palette.base5,
          },
          VisualNOS = {
            bg = palette.base5,
          },
          CursorLine = {
            bg = palette.base4,
          },
          Comment = {
            fg = palette.base7,
            style = "italic",
          },
        },
      })
    end,
  },
  { "Mofiqul/vscode.nvim", lazy = true },
  {
    "Mofiqul/dracula.nvim",
    lazy = true,
    -- priority = 1000,
    opts = {
      colors = {
        bg = "#292A35", --
        fg = "#E7E7E0", -- 白色字体
        selection = "#3A404D",
        comment = "#70747f",
        orange = "#FDC38E",
        -- ANSI
        black = "#1C1C1C", -- ANSI 0
        red = "#DD6E6B",
        green = "#ADDD9A",
        yellow = "#E8EDA2",
        purple = "#BAA0E8", -- used as ANSI 4 (blue)
        pink = "#E48CC1",
        cyan = "#A7DFEF",
        white = "#F6F6F5", -- ANSI 7, 'selection' used for ANSI 8
        -- indexes 9-15
        bright_red = "#E1837F",
        bright_green = "#97EDA2",
        bright_yellow = "#F6F6B6",
        bright_blue = "#D0B5F3",
        bright_magenta = "#E7A1D7",
        bright_cyan = "#BCF4F5",
        bright_white = "#FFFFFF", -- index 15
    
        menu = "#21222C",
        visual = "#505663",
        gutter_fg = "#4B5263",
        nontext = "#3B4048",
      },
    },
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
  {
    "catppuccin/nvim",
    -- name = "catppuccin",
    -- priority = 1000,
  },
  "morhetz/gruvbox",
  "junegunn/seoul256.vim",
  "projekt0n/github-nvim-theme",
  "nlknguyen/papercolor-theme",
  "chiendo97/intellij.vim",
  "savq/melange-nvim",
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "melange",
    },
  },
}
