return {
  {
    "mg979/vim-visual-multi",
  },
  {
    -- nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
    -- vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
    -- nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
    -- nnoremap <silent> n :call WordNavigation(1)<cr>
    -- nnoremap <silent> N :call WordNavigation(0)<cr>
    "lfv89/vim-interestingwords",
    keys = {
      { "<leader>k", "<cmd>call InterestingWords('n')<cr>", desc = "HlToggle" },
      { "<leader>K", "<cmd>call UncolorAllWords()<cr>", desc = "HlDismiss" },
    },
  },
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    cmd = { "DiffviewOpen" },
    opts = {
      enhanced_diff_hl = true,
      view = {
        default = { winbar_info = true },
        file_history = { winbar_info = true },
      },
      hooks = {
        diff_buf_read = function(bufnr)
          vim.b[bufnr].view_activated = false
        end,
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    -- event = "LazyFile",
    opts = {
      current_line_blame = true,
    },
  }
}
