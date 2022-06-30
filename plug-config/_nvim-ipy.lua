vim.api.nvim_create_user_command("RunQtConsole", [[:call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")]], {nargs=0})
local celldef = "^# %%"
vim.g.ipy_celldef = celldef

local gonext = function(string, flag)
  vim.fn.setreg("a", vim.fn.getreg("/"))
  if not(flag) then
    flag=""
  end
  vim.fn.search(string, flag)
  vim.cmd("nohl")
  vim.cmd("normal zz")
  vim.fn.setreg("/", vim.fn.getreg("a"))
end

local runcell = function()
  vim.fn.IPyRunCell()
  gonext(celldef)
end

vim.keymap.set("n", "<leader>jqt", ":RunQtConsole<Enter>", {silent = true})
vim.keymap.set("n", "<leader>jk", ":IPython<Space>--existing<Space>--no-window<Enter>", {silent = true})
vim.keymap.set("n", "<leader>jc", runcell, {silent = true})
vim.keymap.set("n", "<leader>ja", "<Plug>(IPy-RunAll)", {silent = true})
vim.keymap.set("n", "<leader>jn", function() gonext(celldef) end, {silent = true})
vim.keymap.set("n", "<leader>jp", function() gonext(celldef, "b") end, {silent = true})
