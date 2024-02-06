return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,
    cmd = "ConformInfo",
    opts = function()
      local opts = {
        formatters_by_ft = {
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          cpp = { "clang_format" },
          c = { "clang_format" },
        },
      }
      return opts
    end,
  },
}
