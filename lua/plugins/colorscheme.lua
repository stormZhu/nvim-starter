return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "ribru17/bamboo.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("bamboo").setup({
        -- optional configuration here
        highlights = {
          -- make comments blend nicely with background, similar to other color schemes
          ["@comment"] = { fg = "$grey" },
        },
      })
      require("bamboo").load()
    end,
  },
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    config = function()
      local palette = require("monokai").pro
      palette.aqua = "#66d9ef" -- 修改一下pro的蓝色
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
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "monokai_pro",
  --   },
  -- },
}
