return {
  "neovim/nvim-lspconfig",
  init = function()
  local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "gr", "<cmd>Lspsaga finder<CR>", desc="Lspsaga finder"}
    keys[#keys + 1] = { "gR", "<cmd>Telescope lsp_references<cr>", desc="References"}
    keys[#keys + 1] = { "gI", "<cmd>Lspsaga finder imp<CR>", desc="References"}
    -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
  end,
}
