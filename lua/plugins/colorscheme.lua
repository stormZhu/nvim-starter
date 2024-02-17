return {
  {
    "tanvirtin/monokai.nvim",
    -- lazy = false,
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
  { "Mofiqul/vscode.nvim" },
  {
    "Mofiqul/dracula.nvim",
    lazy = false, 
    priority = 1000,
    opts = {
      colors = {
        bg = "#282A36",
        fg = "#F8F8F2",
        selection = "#44475A",
        comment = "#6272A4",
        red = "#FF5555",
        orange = "#EAAA66",
        yellow = "#F1FA8C",
        green = "#79CF8E",
        purple = "#B690ED",
        cyan = "#83DAED",
        pink = "#FF79C6",
        bright_red = "#FF6E6E",
        bright_green = "#69FF94",
        bright_yellow = "#FFFFA5",
        bright_blue = "#D6ACFF",
        bright_magenta = "#FF92DF",
        bright_cyan = "#A4FFFF",
        bright_white = "#FFFFFF",
        menu = "#21222C",
        visual = "#3E4452",
        gutter_fg = "#4B5263",
        nontext = "#3B4048",
        white = "#ABB2BF",
        black = "#191A21",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
