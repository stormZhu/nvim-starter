return {
  "JoosepAlviste/nvim-ts-context-commentstring",
  lazy = true,
  opts = {
    enable_autocmd = false,
    languages = {
      c = { __default = '// %s', __multiline = '/* %s */' },
      cpp = { __default = '// %s', __multiline = '/* %s */' },
    },
  },
}
