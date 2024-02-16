return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    -- config = function()
    -- local palette = require("monokai").pro
    -- palette.aqua = "#66d9ef" -- 修改一下pro的蓝色
    -- require("monokai").setup({
    --   palette = palette,
    --   custom_hlgroups = {
    --     Visual = {
    --       bg = palette.base5,
    --     },
    --     VisualNOS = {
    --       bg = palette.base5,
    --     },
    --     CursorLine = {
    --       bg = palette.base4,
    --     },
    --     Comment = {
    --       fg = palette.base7,
    --       style = "italic",
    --     },
    --   },
    -- })
    -- end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      local everforest = require("everforest")
      everforest.setup({
        background = "medium",
        transparent_background_level = 0.05, 
        italics = true,
        disable_italic_comments = false,
        on_highlights = function(hl, palette)
          hl.CurrentWord = { underline = true, bold = true }   -- 加下划线比较清楚
        end,
      })
      everforest.load()
    end,
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "everforest",
  --   },
  -- },
}
