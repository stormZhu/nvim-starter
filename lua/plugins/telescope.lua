local Util = require("lazyvim.util")
return {
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
      {
        "nvim-telescope/telescope-live-grep-args.nvim",
        version = "^1.0.0",
        config = function()
          Util.on_load("telescope.nvim", function()
            require("telescope").load_extension("live_grep_args")  --  -F搜索，就可以不用转译了，注意空格要加双引号，所有可以无脑加一个双引号或者单引号,类似 -F 'main() { 右边可以不加～
          end)
        end,
      },
    },
    keys = {
      {
        "<leader>/",
        ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
        desc = "Grep (root dir)",
      },
    },
    opts = function(_, opts)
      local actions = require("telescope.actions")
      local lga_actions = require("telescope-live-grep-args.actions")
      opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i, {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-?>"] = actions.which_key,
      })

      opts.defaults.mappings.n = vim.tbl_extend("force", opts.defaults.mappings.n, {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      })
      -- local lga_actions = require("telescope-live-grep-args.actions")
      -- if opts.extensions == nil then
      --   opts.extensions = {}
      -- elseif endopts.extensions.live_grep_args == nil then
      --   opts.extensions.live_grep_args = {}
      -- else
      --   opts.extensions.live_grep_args = vim.tbl_extend("force", opts.extensions.live_grep_args, {
      --     auto_quoting = false, -- enable/disable auto-quoting
      --     -- define mappings, e.g.
      --     mappings = { -- extend mappings
      --       i = {
      --         ["<C-t>"] = lga_actions.quote_prompt(),
      --         ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
      --       },
      --     },
      --   })
      -- end
    end,
  },
}
