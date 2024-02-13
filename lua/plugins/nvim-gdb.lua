return {
  "sakhnik/nvim-gdb",
  config = function ()
    vim.cmd([[
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
    GdbSessionInit = function ()
      local utils = require("config.utils")
      if utils.exists('.bps.txt') then
        vim.defer_fn(function()
          vim.api.nvim_command(":Gdb source .bps.txt")
        end, 300)
      end    
    end
    vim.cmd([[
      autocmd User NvimGdbStart :lua GdbSessionInit()
    ]])
  end
}


-- define hook-quit
--   shell rm .bps.txt
--   save breakpoints .bps.txt
--   set confirm off
-- end
