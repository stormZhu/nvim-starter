return {
  "sakhnik/nvim-gdb",
  config = function()
    vim.cmd([[
      let g:nvimgdb_disable_start_keymaps = 1
      let g:nvimgdb_config_override = {
        \ 'key_until':      ';u',
        \ 'key_continue':   ';c',
        \ 'key_next':       ';n',
        \ 'key_step':       ';s',
        \ 'key_finish':     ';f',
        \ 'key_breakpoint': ';b',
        \ 'key_eval':       '<f9>',
      \ }
    ]])
    local GdbSessionInit = function()
      local utils = require("config.utils")
      if utils.exists(".bps.txt") then
        vim.defer_fn(function()
          vim.api.nvim_command(":Gdb source .bps.txt")
        end, 300)
      end
    end
    local StartGdbLaunch = function()
      -- start gdb sessoin
      local exec_file = vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      vim.api.nvim_command(":GdbStart gdb -q " .. exec_file)
      vim.api.nvim_command("NvimTreeClose")
    end
    local StartSession = function(t, way)
      way = way or "launch"
      local dap = require("dap")
      local cmd, exec_file
      if way == "launch" then
        exec_file = vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      elseif way == "attach" then
        exec_file = "-p " .. vim.fn.input("Set pid: ") -- TODO: pick pid
      end

      if t == "gdb" then
        cmd = ":GdbStartLLDB gdb " .. exec_file
      elseif t == "lldb" then
        cmd = ":GdbStartLLDB lldb " .. exec_file
      elseif t == "rr" then
        cmd = ":GdbStartRR " .. exec_file
      elseif t == "pdb" then
        cmd = ":GdbStartPDB python -m pdb " .. exec_file
      elseif t == "bashdb" then
        cmd = ":GdbStartBashDB bashdb " .. exec_file
      end
      vim.api.nvim_command("Neotree close")  -- 关闭目录树
      vim.api.nvim_command(cmd)
    end
    
    local CreateWatch = function()
      local watch_arg = vim.fn.input("Watch cmd: ")
      vim.api.nvim_command(":GdbCreateWatch " .. watch_arg)
    end
    opt = { noremap = true, silent = false }
    vim.api.nvim_set_keymap("n", ";dr", '<cmd>lua StartSession("rr")<cr>', { noremap = true, desc = "rr launch" })
    -- launch
    vim.api.nvim_set_keymap("n", ";dg", '<cmd>lua StartSession("gdb")<cr>', { noremap = true, desc = "gdb launch" })
    vim.api.nvim_set_keymap("n", ";dl", '<cmd>lua StartSession("lldb")<cr>', { noremap = true, desc = "lldb launch" })
    -- attach
    vim.api.nvim_set_keymap("n", ";da", '<cmd>lua StartSession("gdb", "attach")<cr>', { noremap = true, desc = "gdb attach" })
    vim.api.nvim_set_keymap("n", ";dd", '<cmd>lua StartSession("lldb", "attach")<cr>', { noremap = true, desc = "lldb attach" })
    vim.api.nvim_set_keymap("n", ";dc", '<cmd>lua CreateWatch()<cr>', { noremap = true, desc = "CreateWatch" })
    -- vim.api.nvim_set_keymap("n", ";dt", ":GdbDebugStop", opt)
    vim.cmd([[
      autocmd User NvimGdbStart :lua GdbSessionInit()
    ]])
  end,
}

-- define hook-quit
--   shell rm .bps.txt
--   save breakpoints .bps.txt
--   set confirm off
