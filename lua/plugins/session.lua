return {
  "folke/persistence.nvim",
  event = "BufReadPre",
  opts = {
    pre_save = function()
      -- require('neo-tree.sources.manager').close_all()
      vim.api.nvim_command("NvimTreeClose")
      -- vim.notify('closed all')
    end,
  },
  keys = {
    --   { "<leader>qs", function() vim.cmd([[Neotree close]]); require("persistence").load() end, desc = "Restore Session" },
    {
      "<leader>qs",
      function()
        vim.cmd([[NvimTreeClose]])
        require("persistence").load()
      end,
      desc = "Restore Session",
    },
    {
      "<leader>ql",
      function()
        vim.cmd([[NvimTreeClose]])
        require("persistence").load({ last = true })
      end,
      desc = "Restore Last Session",
    },
    {
      "<leader>qd",
      function()
        require("persistence").stop()
      end,
      desc = "Don't Save Current Session",
    },
  },
}
