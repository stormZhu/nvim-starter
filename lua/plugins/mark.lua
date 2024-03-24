return {
  "lfv89/vim-interestingwords",
  keys = {
    { "<leader>k", "<cmd>call InterestingWords('n')<cr>", desc = "HlToggle" },
    { "<leader>K", "<cmd>call UncolorAllWords()<cr>", desc = "HlDismiss" },
  },
}

-- nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
-- vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
-- nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
--
-- nnoremap <silent> n :call WordNavigation(1)<cr>
-- nnoremap <silent> N :call WordNavigation(0)<cr>
