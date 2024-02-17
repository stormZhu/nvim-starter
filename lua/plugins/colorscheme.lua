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
  {
    "projekt0n/github-nvim-theme",
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   require("github-theme").setup({})
    --
    --   vim.cmd("colorscheme github_dark_dimmed")
    -- end,
  },
  {
    "askfiy/visual_studio_code",
    lazy = false,
    priority = 100,
    config = function()
      vim.cmd([[colorscheme visual_studio_code]])
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "github_dark_dimmed", 
  --   },
  -- },
}
