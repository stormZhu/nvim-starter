return {
  "mfussenegger/nvim-dap",
  optional = true,
  dependencies = {
    -- Ensure C/C++ debugger is installed
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "codelldb" })
      end
    end,
  },
  opts = function()
    local dap = require("dap")
    if not dap.adapters["codelldb"] then
      require("dap").adapters["codelldb"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "codelldb",
          args = {
            "--port",
            "${port}",
          },
        },
      }
    end
    if not dap.adapters["cppdbg"] then
      require("dap").adapters["cppdbg"] = {
        id = "cppdbg",
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/OpenDebugAD7",
      }
    end
    if not dap.adapters["gdb"] then
      require("dap").adapters["gdb"] = {
        type = "executable",
        command = "gdb",
        args = { "-i", "dap" }      
      }
    end

    for _, lang in ipairs({ "c", "cpp" }) do
      dap.configurations[lang] = {
        {
          type = "codelldb",
          request = "launch",
          name = "Codelldb Launch file",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = true,
        },
        {
          type = "codelldb",
          request = "attach",
          name = "Codelldb Attach",
          pid = require("dap.utils").pick_process,
          cwd = "${workspaceFolder}",
        },
        {
          name = "GBD Launch",
          type = "gdb",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = "${workspaceFolder}",
          stopAtBeginningOfMainSubprogram = true,
        },
        {
          name = "GDB Attach",
          type = "gdb",
          request = "attach",
          pid = require("dap.utils").pick_process,
          cwd = "${workspaceFolder}",
          stopAtBeginningOfMainSubprogram = false,
        },
        -- {
        --   name = "cppgdb Launch",
        --   type = "cppdbg",
        --   request = "launch",
        --   MIMode = "gdb",
        --   cwd = "${workspaceFolder}",
        --   -- udb = "live",
        --   miDebuggerPath = "/data06/zhuyuqing/tools/bin/gdb",
        --   stopAtEntry = true,
        --   program = function()
        --     return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        --   end,
        --   setupCommands = {
        --     {
        --       text = "-enable-pretty-printing",
        --       description = "enable pretty printing",
        --       ignoreFailures = false,
        --     },
        --   },
        -- },
        -- {
        --   name = "cppgdb attach",
        --   type = "cppdbg",
        --   request = "attach",
        --   MIMode = "gdb",
        --   cwd = "${workspaceFolder}",
        --   -- udb = "live",
        --   miDebuggerPath = "/data06/zhuyuqing/tools/bin/gdb",
        --   stopAtEntry = true,
        --   program = function()
        --     return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        --   end,
        --   processId = require("dap.utils").pick_process,
        --   setupCommands = {
        --     {
        --       text = "-enable-pretty-printing",
        --       description = "enable pretty printing",
        --       ignoreFailures = false,
        --     },
        --   },
        -- },
      }
    end
  end,
}

