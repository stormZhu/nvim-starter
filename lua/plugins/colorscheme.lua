return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    config = function()
      local palette = require("monokai").pro
      palette.white = '#C3C0C0'
      palette.grey = '#72696A'
      palette.black = "#000000"
      palette.pink = '#D06A86'
      palette.green = '#77C269'
      palette.aqua = '#6CB5CC'
      palette.yellow = '#E4C15A'
      palette.orange = '#FC9867'
      palette.purple = '#AB9DF2'
      palette.red = '#D15454'
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
  -- {
  --   "neanias/everforest-nvim",
  --   version = false,
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   -- Optional; default configuration will be used if setup isn't called.
  --   config = function()
  --     local everforest = require("everforest")
  --     everforest.setup({
  --       background = "hard",
  --       transparent_background_level = 0.05,
  --       italics = true,
  --       disable_italic_comments = false,
  --       colours_override = function(palette) end,
  --       on_highlights = function(hl, palette)
  --         hl.CurrentWord = { underline = true, bold = true }
  --         local myblue = "#23c8db"   -- 蓝色浅一点
  --         hl.InfoText = { fg = myblue, bg = myblue, sp = myblue, bold = true }
  --       end,
  --     })
  --     everforest.load()
  --   end,
  -- },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "everforest",  -- neo-tree展示不好看
  --   },
  -- },
}
