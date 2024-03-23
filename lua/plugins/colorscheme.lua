return {
  { "mhartington/oceanic-next" },
  "projekt0n/github-nvim-theme",
  "nlknguyen/papercolor-theme",
  "chiendo97/intellij.vim",
  {
    "rmehri01/onenord.nvim",
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        style = "warmer",
        transparent = false, -- Show/hide background
        colors = {},
        highlights = {
          Visual = { bg = "#2b4e67" },
          CursorLine = { bg = "#3b3f4c" },
        },
      })
    end,
  },
  { "sainnhe/sonokai" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
