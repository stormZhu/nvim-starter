return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "tanvirtin/monokai.nvim",
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
            fg = palette.base7,  -- 注释亮一点
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
