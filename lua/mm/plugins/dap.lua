 require('dap-python').setup('/usr/bin/python')

 -- table.insert(require('dap').configurations.python, {
 --   name = 'docker attach',
 --   type = 'python',
 --   request = 'attach',
 --   port = 5678,
 --   host = "localhost",
 --   program = '${file}',
 --   pathMappings = {
 --     localRoot = '${workspaceFolder}',
 --     remoteRoot = "."
 --   }
 -- })

 local keymap = vim.keymap.set
 local dap = require"dap"
 local dap_python = require"dap-python"
 keymap("n", "<leader>db", dap.toggle_breakpoint, {silent = true, desc = "Toggle dap breakpoint"})
 keymap("n", "<leader>dr", dap.repl.toggle, {silent = true, desc = "Toggle dap repl"})
 keymap("n", "<leader>dm", dap_python.test_method, {silent = true, desc = "Run dap for current test method"})
