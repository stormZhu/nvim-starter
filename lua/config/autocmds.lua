-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function copy_file_line_num()
  local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":~:.")
  local line = vim.api.nvim_win_get_cursor(0)[1]
  vim.api.nvim_call_function("setreg", { "+", filename .. ":" .. line })
end

vim.api.nvim_create_user_command("CFL", copy_file_line_num, {})
