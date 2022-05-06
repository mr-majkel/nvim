vim.api.nvim_create_user_command("RunQtConsole", [[call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True"]], {nargs=0})
vim.g.ipy_celldef = "^# %%"
vim.keymap.set("n", "<leader>jqt", ":RunQtConsole<Enter>", {silent = true})
vim.keymap.set("n", "<leader>jk", ":IPython<Space>--existing<Space>--no-window<Enter>", {silent = true})
vim.keymap.set("n", "<leader>jc", "<Plug>(IPy-RunCell)", {silent = true})
vim.keymap.set("n", "<leader>ja", "<Plug>(IPy-RunAll)", {silent = true})
