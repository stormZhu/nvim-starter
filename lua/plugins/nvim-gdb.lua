return {
  "sakhnik/nvim-gdb",
  config = function ()
    -- vim.cmd([[ 
    --     let g:nvimgdb_config_override = {
    --     \ 'sign_current_line': '>',
    --     \ }
    --   ]])
    GdbSessionInit = function ()
      local utils = require("config.utils")
      if utils.exists('.bps.txt') then
        vim.defer_fn(function()
          vim.api.nvim_command(":Gdb source .bps.txt")   -- 自动加载断点
        end, 300)
      end    
    end
    vim.cmd([[
      autocmd User NvimGdbStart :lua GdbSessionInit()
    ]])
  end
}

-- ~/.gdbinit
-- define hook-quit
--   shell rm .bps.txt
--   save breakpoints .bps.txt
--   set confirm off
-- end
