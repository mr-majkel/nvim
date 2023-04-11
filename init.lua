require 'mm.general.disable_builtins'
require 'mm.general.settings'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup('plugins')

require 'mm.general.my_keys'
require 'colors'

vim.cmd.colorscheme("material")

P = function(table)
  print(vim.inspect(table))
end

