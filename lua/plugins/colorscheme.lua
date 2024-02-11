return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { 
    "tanvirtin/monokai.nvim",
    opts = function()
      local palette = require("monokai").pro

      return {
        palette = {
          pink = "#e32078",
        },
        custom_hlgroups = {
          Visual = {
            bg = palette.grey,
          },
        },
        VisualNOS = {
          bg = palette.grey,
        },
        colorscheme = "monokai_pro",
      }
    end,
  },
}
