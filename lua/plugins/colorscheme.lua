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
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "macchiato",
      },
      transparent_background = false,
      color_overrides = {
        all = {},
        latte = {},
        frappe = {
          yellow = "#dbc074",
        },
        macchiato = {},
        mocha = {},
      },
      highlight_overrides = {
        macchiato = function(macchiato)
          return {
            Visual = { bg = "#264F78", style = { "bold" } },
          }
        end,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
